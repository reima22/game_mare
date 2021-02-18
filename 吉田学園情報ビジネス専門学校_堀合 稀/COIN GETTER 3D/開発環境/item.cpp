//==============================================================================
//
// アイテムの描画〔item.cpp〕
// AUTHOR : MARE HORIAI
//
//==============================================================================
#include "item.h"
#include "game.h"
#include "shadow.h"
#include "score.h"
#include "particle.h"
#include "sound.h"
#include "time.h"
#include "stdlib.h"

//==============================================================================
// マクロ定義　
//==============================================================================
#define ITEM_TURN	(0.05f)	// アイテムの回転速度

//==============================================================================
// グローバル変数
//==============================================================================
LPD3DXMESH g_pMeshItem = NULL;			// メッシュ(頂点情報)へのポインタ
LPD3DXBUFFER g_pBuffMatItem = NULL;		// マテリアル(材質情報)へのポインタ
DWORD g_nNumMatItem = 0;				// マテリアルの数
ITEM g_aItem[MAX_ITEM];					// アイテムの情報
//int g_nAnimCnt;						// アニメーションカウント
//int g_nAnimCol;						// 色変化カウント

//==============================================================================
// アイテムの初期化処理
//==============================================================================
HRESULT InitItem(void)
{
	// ローカル変数宣言
	//VERTEX_2D *pVtx;
	LPDIRECT3DDEVICE9 pDevice;
	ITEM *pItem;
	//int nRand;

	// 乱数処理から現時刻を除外
	srand((unsigned int)time(0));

	// デバイスの取得
	pDevice = GetDevice();

	// アイテムの取得
	pItem = &g_aItem[0];

	// Xファイルの読み込み
	D3DXLoadMeshFromX(
		"data/MODEL/coin.x",
		D3DXMESH_SYSTEMMEM,
		pDevice,
		NULL,
		&g_pBuffMatItem,
		NULL,
		&g_nNumMatItem,
		&g_pMeshItem);

	//// 変数の初期化
	//g_nAnimCnt = 0;
	//g_nAnimCol = 0;

	// ローカル変数宣言
	int nNumVtx;	// 頂点数
	DWORD sizeFVF;	// 頂点フォーマットのサイズ
	BYTE *pVtxBuff;	// 頂点バッファへのポインタ

	// 頂点数を取得
	nNumVtx = g_pMeshItem->GetNumVertices();

	// 頂点フォーマットのサイズの取得
	sizeFVF = D3DXGetFVFVertexSize(g_pMeshItem->GetFVF());

	// 構造体の初期化
	for (int nCntItem = 0; nCntItem < MAX_ITEM; nCntItem++, pItem++)
	{
		pItem->pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
		pItem->col = D3DXCOLOR(1.0f, 1.0f, 0.0f, 1.0f);
		pItem->nType = NULL;
		pItem->bUse = false;
		pItem->vtxMaxObject = D3DXVECTOR3(-10000.0f, -10000.0f, -10000.0f);
		pItem->vtxMinObject = D3DXVECTOR3(10000.0f, 10000.0f, 10000.0f);
		//pItem->fAnim = 0.0f;
		//if (nCntItem == nRand)
		//{
		//	pItem->bHiScore = true;
		//}
		//else
		//{
		//	pItem->bHiScore = false;
		//}
	}



	// 頂点座標の比較
	for (int nCntItem = 0; nCntItem < MAX_ITEM; nCntItem++)
	{
		// 頂点バッファをロック
		g_pMeshItem->LockVertexBuffer(D3DLOCK_READONLY, (void**)&pVtxBuff);

		for (int nCntVtx = 0; nCntVtx < nNumVtx; nCntVtx++)
		{
			D3DXVECTOR3 vtx = *(D3DXVECTOR3*)pVtxBuff;	// 頂点座標の代入

			// 各座標の最大値の比較
			if (g_aItem[nCntItem].vtxMaxObject.x < vtx.x)
			{
				g_aItem[nCntItem].vtxMaxObject.x = vtx.x;
			}
			if (g_aItem[nCntItem].vtxMaxObject.y < vtx.y)
			{
				g_aItem[nCntItem].vtxMaxObject.y = vtx.y;
			}
			if (g_aItem[nCntItem].vtxMaxObject.z < vtx.z)
			{
				g_aItem[nCntItem].vtxMaxObject.z = vtx.z;
			}

			// 各座標の最小値の比較
			if (g_aItem[nCntItem].vtxMinObject.x > vtx.x)
			{
				g_aItem[nCntItem].vtxMinObject.x = vtx.x;
			}
			if (g_aItem[nCntItem].vtxMinObject.y > vtx.y)
			{
				g_aItem[nCntItem].vtxMinObject.y = vtx.y;
			}
			if (g_aItem[nCntItem].vtxMinObject.z > vtx.z)
			{
				g_aItem[nCntItem].vtxMinObject.z = vtx.z;
			}

			pVtxBuff += sizeFVF;	// 頂点フォーマットのサイズ分ポインタを進める
		}
		// 頂点バッファをアンロック
		g_pMeshItem->UnlockVertexBuffer();
	}

	SetItem(D3DXVECTOR3(-50.0f, 0.0f, -50.0f));
	SetItem(D3DXVECTOR3(0.0f, 0.0f, -50.0f));
	SetItem(D3DXVECTOR3(50.0f, 0.0f, -50.0f));
	SetItem(D3DXVECTOR3(100.0f, 0.0f, -50.0f));
	SetItem(D3DXVECTOR3(-100.0f, 0.0f, -50.0f));
	SetItem(D3DXVECTOR3(-100.0f, 0.0f, 50.0f));


	return S_OK;
}

//==============================================================================
// アイテムの終了処理
//==============================================================================
void UninitItem(void)
{
	// メッシュの破棄
	if (g_pMeshItem != NULL)
	{
		g_pMeshItem->Release();
		g_pMeshItem = NULL;
	}

	// マテリアルの破棄
	if (g_pBuffMatItem != NULL)
	{
		g_pBuffMatItem->Release();
		g_pBuffMatItem = NULL;
	}
}

//==============================================================================
// アイテムの更新処理
//==============================================================================
void UpdateItem(void)
{
	// ローカル変数宣言
	ITEM *pItem = &g_aItem[0];

	// アイテムの回転
	for (int nCntItem = 0; nCntItem < MAX_ITEM; nCntItem++,pItem++)
	{
		if (pItem->bUse == true)
		{
			pItem->rot.y += ITEM_TURN;

			if (pItem->rot.y > D3DX_PI)
			{
				pItem->rot.y -= D3DX_PI * 2.0f;
			}
		}
	}
}

//==============================================================================
// アイテムの描画処理
//==============================================================================
void DrawItem(void)
{
	// ローカル変数宣言
	LPDIRECT3DDEVICE9 pDevice = GetDevice();	// デバイスの取得
	D3DXMATRIX mtxRot, mtxTrans;				// 計算用マトリックス
	D3DMATERIAL9 matDef;						// 現在のマテリアル保存用
	D3DXMATERIAL *pMat;							// マテリアルデータへのポインタ
	ITEM *pItem = &g_aItem[0];

	for (int nCntItem = 0; nCntItem < MAX_ITEM; nCntItem++,pItem++)
	{
		if (pItem->bUse == true)
		{
			// ワールドマトリックスの初期化
			D3DXMatrixIdentity(&pItem->mtxWorld);

			// 向きの反映
			D3DXMatrixRotationYawPitchRoll(&mtxRot, pItem->rot.y, pItem->rot.x, pItem->rot.z);
			D3DXMatrixMultiply(&pItem->mtxWorld, &pItem->mtxWorld, &mtxRot);

			// 位置を反映
			D3DXMatrixTranslation(&mtxTrans, pItem->pos.x, pItem->pos.y, pItem->pos.z);
			D3DXMatrixMultiply(&pItem->mtxWorld, &pItem->mtxWorld, &mtxTrans);

			// ワールドマトリックスの設定
			pDevice->SetTransform(D3DTS_WORLD, &pItem->mtxWorld);

			// 現在のマテリアルを取得
			pDevice->GetMaterial(&matDef);

			// マテリアルデータへのポインタを取得
			pMat = (D3DXMATERIAL*)g_pBuffMatItem->GetBufferPointer();

			for (int nCntMat = 0; nCntMat < (int)g_nNumMatItem; nCntMat++)
			{
				// マテリアルの設定
				pDevice->SetMaterial(&pMat[nCntMat].MatD3D);

				// テクスチャの設定
				pDevice->SetTexture(0, NULL);

				// モデル(パーツ)の描画
				g_pMeshItem->DrawSubset(nCntMat);
			}

			// 保存していたマテリアルを戻す
			pDevice->SetMaterial(&matDef);
		}
	}
}

//==============================================================================
// アイテムの設定
//==============================================================================
void SetItem(D3DXVECTOR3 pos)
{
	ITEM *pItem = &g_aItem[0];

	for (int nCntItem = 0; nCntItem < MAX_ITEM; nCntItem++,pItem++)
	{
		if (pItem->bUse == false)
		{
			pItem->pos = pos;

			pItem->posPoint[0] = D3DXVECTOR3(pItem->pos.x + pItem->vtxMinObject.x, 0.0f, pItem->pos.z + pItem->vtxMinObject.x);
			pItem->posPoint[1] = D3DXVECTOR3(pItem->pos.x + pItem->vtxMinObject.x, 0.0f, pItem->pos.z + pItem->vtxMaxObject.x);
			pItem->posPoint[2] = D3DXVECTOR3(pItem->pos.x + pItem->vtxMaxObject.x, 0.0f, pItem->pos.z + pItem->vtxMaxObject.x);
			pItem->posPoint[3] = D3DXVECTOR3(pItem->pos.x + pItem->vtxMaxObject.x, 0.0f, pItem->pos.z + pItem->vtxMinObject.x);

			pItem->vecPoint[0] = pItem->posPoint[1] - pItem->posPoint[0];
			pItem->vecPoint[1] = pItem->posPoint[2] - pItem->posPoint[1];
			pItem->vecPoint[2] = pItem->posPoint[3] - pItem->posPoint[2];
			pItem->vecPoint[3] = pItem->posPoint[0] - pItem->posPoint[3];

			pItem->nIdx = SetShadow(D3DXVECTOR3(pItem->pos.x, 0.0f, pItem->pos.z), 10.0f, 10.0f);

			pItem->bUse = true;

			break;
		}
	}
}

//==============================================================================
// 敵の取得
//==============================================================================
ITEM *GetItem(void)
{
	return &g_aItem[0];
}

//==============================================================================
// ランダムでハイスコアアイテムの選定
//==============================================================================
int RandItem(void)
{
	//// ローカル変数宣言
	//ITEM *pItem;
	//int nStage = GetStage();
	int nHigh = 0;

	//// アイテムの取得
	//pItem = &g_aItem[0];

	//if (nStage == 0)
	//{
	//	nHigh = rand() % COIN_STAGE1;
	//}
	//else if (nStage == 1)
	//{
	//	nHigh = rand() % COIN_STAGE2;
	//}
	//else if(nStage == 2)
	//{
	//	nHigh = rand() % COIN_STAGE3;
	//}

	return nHigh;
}

//==============================================================================
// アイテムの取得
//==============================================================================
void TouchItem(D3DXVECTOR3 *pPos, float fWidthMax, float fWidthMin, float fDepthMax, float fDepthMin, float fHeightMax, float fHeightMin)
{
	// ローカル変数宣言
	ITEM *pItem = &g_aItem[0];
	Shadow *pShadow = GetShadow();
	D3DXVECTOR3 aVec[FOUR_POINT];
	float fItemVec[FOUR_POINT];
	D3DXVECTOR3 pos = *pPos;

	for (int nCntItem = 0; nCntItem < MAX_ITEM; nCntItem++, pItem++, pShadow++)
	{
		if (pItem->bUse == true)
		{// アイテムの外積当たり判定
			for (int nCnt = 0; nCnt < FOUR_POINT; nCnt++)
			{
				switch (nCnt)
				{
				case 0:
					aVec[nCnt] = pos + D3DXVECTOR3(fWidthMax, 0.0f, 0.0f) - pItem->posPoint[nCnt];
					break;

				case 1:
					aVec[nCnt] = pos + D3DXVECTOR3(0.0f, 0.0f, fDepthMin) - pItem->posPoint[nCnt];
					break;

				case 2:
					aVec[nCnt] = pos + D3DXVECTOR3(fWidthMin, 0.0f, 0.0f) - pItem->posPoint[nCnt];
					break;

				case 3:
					aVec[nCnt] = pos + D3DXVECTOR3(0.0f, 0.0f, fDepthMin) - pItem->posPoint[nCnt];
					break;
				}

				fItemVec[nCnt] = (pItem->vecPoint[nCnt].z * aVec[nCnt].x) - (pItem->vecPoint[nCnt].x * aVec[nCnt].z);
			}


			if (fItemVec[0] > 0.0f && fItemVec[1] > 0.0f && fItemVec[2] > 0.0f && fItemVec[3] > 0.0f)
			{// アイテムの取得
				SetEffect(D3DXVECTOR3(pItem->pos.x, pItem->pos.y + 5.0f, pItem->pos.z), 0.01f, D3DXCOLOR(1.0f, 1.0f, 0.1f, 1.0f), 5.0f, 0.05f, 30);
				PlaySound(SOUND_LABEL_SE_COIN);
				AddScore(100);
				pShadow->bUse = false;
				pItem->bUse = false;
				break;
			}
		}
	}
}