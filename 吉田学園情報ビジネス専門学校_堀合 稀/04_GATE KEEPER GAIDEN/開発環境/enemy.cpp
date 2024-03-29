//==============================================================================
//
// 敵描画処理〔enemy.cpp〕
// Author : Mare Horiai
//
//==============================================================================
#include "main.h"
#include "scene2D.h"
#include "enemy.h"
#include "manager.h"
#include "input.h"
#include "bullet.h"
#include "renderer.h"
#include "texture.h"
#include "item.h"
#include "score.h"
#include "defeat.h"
#include "effect.h"
#include "effect_on.h"
#include "game.h"
#include "textdata_enemy.h"
#include "caution.h"
#include "sound.h"
#include "enemy_formation.h"
#include "enemy_mother.h"

// 静的メンバ変数宣言
int CEnemy::m_nNumEnemy = 0;						// 総数
int CEnemy::m_nSetEnemyCnt = 0;						// 自動生成設定カウント
CEnemy::BULLET_PATTERN CEnemy::m_patternSet = 
BULLET_PATTERN_NORMAL;								// 弾の発射パターン

//==============================================================================
// コンストラクタ
//==============================================================================
CEnemy::CEnemy()
{
	m_nNumEnemy++;		// 総数の加算
	m_nBulletCnt = 0;
	m_nBulletSetDelay = 0;
}

//==============================================================================
// デストラクタ
//==============================================================================
CEnemy::~CEnemy()
{

}

//==============================================================================
// 敵の初期化処理
//==============================================================================
HRESULT CEnemy::Init(D3DXVECTOR3 pos, OBJTYPE objType, float fSizeX, float fSizeY,int nBulletSetDelay)
{
	// 初期化設定
	CScene2D::Init(pos);
	CScene2D::SetSize(fSizeX, fSizeY);
	CScene2D::SetTex(1, 1, 0, 0, 0.0f, 0.0f);
	CScene2D::SetObjType(objType);

	// 弾発射パターンの設定
	SetBulletPattern();

	// 発射間隔の設定
	m_nBulletSetDelay = nBulletSetDelay;

	// 状態設定
	m_state = ENEMYSTATE_NORMAL;

	return S_OK;
}

//==============================================================================
// 敵の終了処理
//==============================================================================
void CEnemy::Uninit(void)
{
	// 総数の減少
	m_nNumEnemy--;

	CScene2D::Uninit();
}

//==============================================================================
// 敵の更新処理
//==============================================================================
void CEnemy::Update(void)
{
	// キャラ情報の取得
	D3DXVECTOR3 posEnemy = CScene2D::GetPosition();
	float fSizeCharaX = CScene2D::GetSize().x;
	float fSizeCharaY = CScene2D::GetSize().y;

	// 移動処理
	posEnemy += m_Move;

	if (m_type == ENEMY_TYPE_MOTHER)
	{
		CEnemy::MoveMother(posEnemy);
	}

	CEnemyMother::MoveParts();

	// 弾発射カウント
	m_nBulletCnt++;

	// 弾の自動発射
	if ( m_nBulletSetDelay != 0 && m_nBulletCnt % m_nBulletSetDelay == 0)
	{	
		AutoSetBullet(posEnemy, m_pattern);
	}

	// 弾との当たり判定
	CollisionBullet(posEnemy, fSizeCharaX, fSizeCharaY);

	// 画面横端接触による移動の折り返し	
	if (m_bUnderSet == false)
	{// X軸の判定有効
		if (posEnemy.x < fSizeCharaX || posEnemy.x > SCREEN_WIDTH - fSizeCharaX)
		{
			m_Move.x *= -1;
		}

		if (CGame::GetMotherEnemy() == true)
		{
			if (m_type == ENEMY_TYPE_1)
			{
				if (posEnemy.x < fSizeCharaX + 10.0f || posEnemy.x > SCREEN_WIDTH - fSizeCharaX - 10.0f)
				{
					m_Move.x = 0.0f;
					m_Move.y = 1.0f;
				}
			}
		}
	}
	else
	{// 折り返し無効の場合、特定位置で降下
		if (m_Move.x > 0 && posEnemy.x >= 1240.0f)
		{// 右移動の場合
			m_Move = D3DXVECTOR3(0.0f, 4.0f, 0.0f);
		}
		else if (m_Move.x < 0 && posEnemy.x <= 40.0f)
		{// 左移動の場合
			m_Move = D3DXVECTOR3(0.0f, 4.0f, 0.0f);
		}		
	}

	// ステータス状態
	EnemyState();

	// 位置の設定
	CScene2D::SetPosition(posEnemy);

	// 更新
	CScene2D::Update();
}

//==============================================================================
// 敵の描画処理
//==============================================================================
void CEnemy::Draw(void)
{
	CScene2D::Draw();
}

//==============================================================================
// 敵の生成処理
//==============================================================================
CEnemy *CEnemy::Create(D3DXVECTOR3 pos, OBJTYPE objType, float fSizeX, float fSizeY, CTexture::TEXTYPE type, D3DXVECTOR3 move,int nLife,int nBulletSetDelay,BULLET_PATTERN pattern,bool bUnder,ENEMY_TYPE enemyType)
{
	// ローカル変数宣言
	CEnemy *pEnemy;
	pEnemy = new CEnemy;

	// 弾発射パターンの一時保存
	m_patternSet = pattern;

	// 初期化
	if (pEnemy != NULL)
	{
		pEnemy->Init(pos, objType, fSizeX, fSizeY,nBulletSetDelay);
	}

	// テクスチャ割り当て
	pEnemy->BindTexture(type);

	// キャラクターパラメータ
	pEnemy->SetMove(move);
	pEnemy->SetLife(CHARA_TYPE_ENEMY,nLife);
	pEnemy->CharaSetType(CHARA_TYPE_ENEMY);

	pEnemy->m_bUnderSet = bUnder;
	pEnemy->m_type = enemyType;

	return pEnemy;
}

//==============================================================================
// 個別自動生成処理
//==============================================================================
void CEnemy::AutoSetCreate(void)
{
	// ランダム設置カウント基準値
	int nSetMin = 0;
	int nSetDif = 0;

	float fSpeed = 0.0f;

	switch (CTitleDifficulty::GetDifficulty())
	{
	case CTitleDifficulty::DIFFICULTY_EASY:
		nSetMin = CTextDataEnemy::SetData(CTextDataEnemy::ENEMYDATA_CREATE_MIN_EASY);
		nSetDif = CTextDataEnemy::SetData(CTextDataEnemy::ENEMYDATA_CREATE_DIFFERENCE_EASY);
		fSpeed = CTextDataEnemy::SetSpeed(CTitleDifficulty::DIFFICULTY_EASY);
		break;

	case CTitleDifficulty::DIFFICULTY_NORMAL:
		nSetMin = CTextDataEnemy::SetData(CTextDataEnemy::ENEMYDATA_CREATE_MIN_NORMAL);
		nSetDif = CTextDataEnemy::SetData(CTextDataEnemy::ENEMYDATA_CREATE_DIFFERENCE_NORMAL);
		fSpeed = CTextDataEnemy::SetSpeed(CTitleDifficulty::DIFFICULTY_NORMAL);
		break;

	case CTitleDifficulty::DIFFICULTY_HARD:
		nSetMin = CTextDataEnemy::SetData(CTextDataEnemy::ENEMYDATA_CREATE_MIN_HARD);
		nSetDif = CTextDataEnemy::SetData(CTextDataEnemy::ENEMYDATA_CREATE_DIFFERENCE_HARD);
		fSpeed = CTextDataEnemy::SetSpeed(CTitleDifficulty::DIFFICULTY_HARD);
		break;
	}

	// 設置カウントの増加
	m_nSetEnemyCnt++;

	// 敵の自動生成
	if (m_nSetEnemyCnt % nSetMin == 0)
	{
		// 配置するX軸の設定
		float fRandX = (float)(rand() % 1200 + 60);

		// 生成する敵のサイズ
		float fSizeX;
		float fSizeY;

		ENEMY_TYPE enemyType;

		// 敵の種類設定
		int nType = rand() % 4;

		fSpeed -= (float)nType / 10.0f;

		D3DXVECTOR3 move = D3DXVECTOR3(0.0f, fSpeed, 0.0f);

		// 弾ランダム生成カウント基準値
		int nSetBulletMin = CTextDataEnemy::SetData(CTextDataEnemy::ENEMYDATA_CREATE_BULLET_MIN);
		int nSetBulletDif = CTextDataEnemy::SetData(CTextDataEnemy::ENEMYDATA_CREATE_BULLET_DIFFERENCE);

		// 弾の発射間隔
		int nBulletCntSet = rand() % nSetBulletDif + nSetBulletMin;

		// 敵のクリエイト
		switch (nType)
		{// サイズの分類
		case 0:
			fSizeX = ENEMYX_0;
			fSizeY = ENEMYY_0;
			enemyType = ENEMY_TYPE_0;
			break;

		case 1:
			fSizeX = ENEMYX_1;
			fSizeY = ENEMYY_1;
			enemyType = ENEMY_TYPE_1;
			break;

		case 2:
			fSizeX = ENEMYX_2;
			fSizeY = ENEMYY_2;
			enemyType = ENEMY_TYPE_2;
			break;

		case 3:
			fSizeX = ENEMYX_3;
			fSizeY = ENEMYY_3;
			enemyType = ENEMY_TYPE_3;
			break;
		}

		// 敵の生成
		CEnemy::Create(D3DXVECTOR3(fRandX, ENEMY_SET_POS_Y, 0.0f),
			CScene::OBJTYPE_ENEMY,
			fSizeX, fSizeY, (CTexture::TEXTYPE)(CTexture::TEXTYPE_ENEMY_0 + nType),
			move, nType + 1, nBulletCntSet, BULLET_PATTERN_NORMAL, false,enemyType);

	}
}

//==============================================================================
// 被ダメージの処理
//==============================================================================
void CEnemy::DamageLife(int nDamage,D3DXVECTOR3 pos)
{
	// ダメージ計算
	m_nLife[CHARA_TYPE_ENEMY] -= nDamage;

	// 結果
	if (m_nLife[CHARA_TYPE_ENEMY] <= 0)
	{// 撃破
		// 撃破ステータスへ
		SetState(ENEMYSTATE_DEATH);
	}
	else
	{// 被ダメージ
		// サウンド再生
		CSound::Play(CSound::SOUND_LABEL_SE_EXPLOSION000);

		// 被ダメージステータスへ
		SetState(ENEMYSTATE_DAMAGE);
	}
}

//==============================================================================
// STATE毎の処理
//==============================================================================
void CEnemy::EnemyState(void)
{
	// 敵の位置
	D3DXVECTOR3 posEnemy = GetPosition();

	m_nStateCnt++;

	switch (m_state)
	{
	case ENEMYSTATE_NORMAL:	// 通常時
		CScene2D::SetCol(D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f));
		m_nStateCnt = 0;
		break;

	case ENEMYSTATE_DAMAGE:	// 被ダメージ
		if (m_nStateCnt <= 9)
		{
			CScene2D::SetCol(D3DXCOLOR(0.9f, 0.0f, 0.0f, 1.0f));
		}
		else
		{
			m_state = ENEMYSTATE_NORMAL;
			m_nStateCnt = 0;
		}
		break;

	case ENEMYSTATE_DEATH:	// ライフ喪失		
		m_nStateCnt = 0;

		// 爆発音
		CSound::Play(CSound::SOUND_LABEL_SE_EXPLOSION000);

		// スコアの加算
		if (m_type == ENEMY_TYPE_MOTHER)
		{// 母艦の撃破
			for (int nCnt = 0; nCnt < 100; nCnt++)
			{
				CEffect::Create(posEnemy, 0.08f, D3DXCOLOR(1.0f, 0.0f, 0.5f, 1.0f), 20.0f, 0.01f, 0);
			}

			CScore::AddScore(30000);
			
			CEnemyMother::SetMotherState(CEnemyMother::MOTHER_STATE_END);
		}
		else
		{// 他敵の撃破
			CScore::AddScore(10000);

			// 撃破数の加算
			CDefeat::AddDefeat();

			// アイテム生成
			CItem::RandCreate(posEnemy);

			for (int nCnt = 0; nCnt < 50; nCnt++)
			{
				CEffect::Create(posEnemy, 0.05f, D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f), 10.0f, 0.02f, 0);
			}
		}
		
		Uninit();
		break;

	default:
		break;
	}
}

//==============================================================================
// 敵の弾自動発射
//==============================================================================
void CEnemy::AutoSetBullet(D3DXVECTOR3 pos,BULLET_PATTERN pattern)
{
	// 発射する方向
	switch (pattern)
	{
	case BULLET_PATTERN_NONE:	//	撃たない
		break;

	case BULLET_PATTERN_NORMAL:	// 真下へ撃つ
		CBullet::Create(pos, CScene::OBJTYPE_BULLET, 
			BULLET_A_X, BULLET_A_Y, D3DXVECTOR3(0.0f, 5.0f, 0.0f), 
			CTexture::TEXTYPE_BULLET_ENEMY, CBullet::BULLET_SIDE_ENEMY,
			D3DXVECTOR3(0.0f, 0.0f, 0.0f), 1);
		break;

	case BULLET_PATTERN_AIM:	// プレイヤーを狙う
		// プレイヤーの位置取得
		D3DXVECTOR3 posPlayer = CScene::GetScene(PRIORITY_CHARA)->GetPosition();

		// プレイヤーへの方向
		D3DXVECTOR3 vecPlayer = posPlayer - pos;

		// 長さを求める
		float fLength = (float)sqrt((vecPlayer.x * vecPlayer.x + vecPlayer.y * vecPlayer.y));

		// 角度
		float fAngle = atan2f(vecPlayer.x, vecPlayer.y);

		// 長さを調整
		vecPlayer.x = vecPlayer.x / fLength;
		vecPlayer.y = vecPlayer.y / fLength;

		// 速さを指定
		vecPlayer.x *= BULLET_AIM_SPEED;
		vecPlayer.y *= BULLET_AIM_SPEED;

		CBullet::Create(pos, CScene::OBJTYPE_BULLET,
			BULLET_A_X, BULLET_A_Y, vecPlayer,
			CTexture::TEXTYPE_BULLET_ENEMY, CBullet::BULLET_SIDE_ENEMY,
			D3DXVECTOR3(0.0f, 0.0f, fAngle), 1);
		break;
	}
}

//==============================================================================
// 残存する敵の全破棄
//==============================================================================
void CEnemy::UninitAll(void)
{
	// ローカル変数宣言
	CScene *pScene = CScene::GetScene(PRIORITY_CHARA);
	CScene *pSceneNext = NULL;

	// 全ての敵の死亡フラグ建て
	while (pScene)
	{
		pSceneNext = CScene::GetSceneNext(pScene);

		if (pScene->GetObjType() == OBJTYPE_ENEMY)
		{
			pScene->Uninit();
		}

		pScene = pSceneNext;
	}
}

//==============================================================================
// 母艦の挙動
//==============================================================================
void CEnemy::MoveMother(D3DXVECTOR3 pos)
{
	// 母艦の出現状態
	CEnemyMother::MOTHER_STATE state = CEnemyMother::GetMotherState();

	// 状態により変化
	switch (state)
	{
	case CEnemyMother::MOTHER_STATE_NONE:
		// 警告の終了
		if (CCaution::GetCautionState() == CCaution::CAUTION_STATE_ALERT_END)
		{
			// 状態の変化
			CEnemyMother::SetMotherState(CEnemyMother::MOTHER_STATE_START);
		}

		break;

	case CEnemyMother::MOTHER_STATE_START:
		// 移動力の設定
		m_Move = D3DXVECTOR3(0.0f, 1.0f, 0.0f);

		if (pos.y >= MOTHER_POS_Y)
		{
			// 状態の変化
			m_Move = D3DXVECTOR3(MOTHER_MOVE_0, 0.0f, 0.0f);			
			CEnemyFormation::SetParamReset();	// 隊列情報のリセット
			CEnemyMother::SetMotherState(CEnemyMother::MOTHER_STATE_ACTIVE);
		}
		break;

	case CEnemyMother::MOTHER_STATE_ACTIVE:
		if (m_nLife[CHARA_TYPE_ENEMY] >= CEnemyMother::GetLife() * 3.0f / 4.0f)
		{
			// 生成インターバル
			CEnemyFormation::SetInterval(100);
			CEnemyFormation::SetFormRandom(CEnemyFormation::TEAM_PATTERN_MOTHER_0);
		}
		else if (m_nLife[CHARA_TYPE_ENEMY] >= CEnemyMother::GetLife() / 2.0f)
		{// 体力50%まで
			// フェーズシフト
			if (CEnemyMother::GetPhase() == CEnemyMother::MOTHER_PHASE_0)
			{
				CEnemyMother::SetPhase(CEnemyMother::MOTHER_PHASE_1);

				if (m_Move.x > 0)
				{
					m_Move.x = MOTHER_MOVE_1;
				}
				else
				{
					m_Move.x = -MOTHER_MOVE_1;
				}
			}

			CEnemyFormation::SetInterval(110);
			CEnemyFormation::SetFormRandom(CEnemyFormation::TEAM_PATTERN_MOTHER_1);
		}
		else if (m_nLife[CHARA_TYPE_ENEMY] >= CEnemyMother::GetLife() / 4.0f)
		{// 体力25%まで
		 // フェーズシフト
			if (CEnemyMother::GetPhase() == CEnemyMother::MOTHER_PHASE_1)
			{
				CEnemyMother::SetPhase(CEnemyMother::MOTHER_PHASE_2);

				// 移動力の加速
				if (m_Move.x > 0)
				{
					m_Move.x = MOTHER_MOVE_2;
				}
				else
				{
					m_Move.x = -MOTHER_MOVE_2;
				}
			}

			// インターバルの設定
			CEnemyFormation::SetInterval(120);
			CEnemyFormation::SetFormRandom(CEnemyFormation::TEAM_PATTERN_MOTHER_2);
		}
		else
		{// 体力25%以降
		 // フェーズシフト
			if (CEnemyMother::GetPhase() == CEnemyMother::MOTHER_PHASE_2)
			{
				CEnemyMother::SetPhase(CEnemyMother::MOTHER_PHASE_3);
			}

			CScene *pScene = CScene::GetScene(PRIORITY_CHARA);
			CScene *pSceneNext = NULL;

			while (pScene)
			{
				pSceneNext = CScene::GetSceneNext(pScene);

				if (pScene->GetObjType() == OBJTYPE_ENEMY)
				{
					CEnemy *pEnemy = (CEnemy*)pScene;

					if (pEnemy->GetEnemyType() == ENEMY_TYPE_MOTHER)
					{
						if (pEnemy->GetPosition().x < 650.0f && pEnemy->GetPosition().x > 630.0f)
						{
							pEnemy->SetPosition(D3DXVECTOR3(640.0f, pEnemy->GetPosition().y, 0.0f));
							pEnemy->m_Move.x = 0.0f;
						}					
					}
				}

				pScene = pSceneNext;
			}

			// インターバルの設定
			CEnemyFormation::SetInterval(130);
			CEnemyFormation::SetFormRandom(CEnemyFormation::TEAM_PATTERN_MOTHER_PARTS);
		}

		break;
	}
}