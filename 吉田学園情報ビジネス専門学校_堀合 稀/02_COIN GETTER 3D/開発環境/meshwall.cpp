//==============================================================================
//
// メッシュ壁の描画〔meshwall.cpp〕
// AUTHOR : MARE HORIAI
//
//==============================================================================
#define _CRT_SECURE_NO_WARNINGS
#include "meshwall.h"
#include <stdio.h>

//==============================================================================
// マクロ定義
//==============================================================================

#define WALL_POINT_MAX	(65535)		// 頂点数の最大
#define WALL_IDX_MAX	(65535)		// インデックスバッファの最大確保数
#define WIDTH_WALL	(2)		// 列数(幅)
#define HEIGHT_WALL	(2)		// 行数(高さ)

//#define POINT	(14)	// 頂点数
//#define POLY	(12)	// ポリゴン数

//==============================================================================
// グローバル変数
//==============================================================================
Meshwall g_Meshwall; 

//==============================================================================
// 初期化処理
//==============================================================================
HRESULT InitMeshwall(void)
{
	// ローカル変数宣言
	//VERTEX_3D *pVtx;
	LPDIRECT3DDEVICE9 pDevice;
	//WORD *pIdx;
	int nCount = 0;
	WallInfo *pInfo = &g_Meshwall.wallInfo[0];

	// デバイスの取得
	pDevice = GetDevice();

	// 変数の初期化
	for (int nCnt = 0; nCnt < MAX_MWALL; nCnt++, pInfo++)
	{
		pInfo->bUse = false;
	}
	g_Meshwall.nNumWall = 0;
	g_Meshwall.nNumTex = 0;

	LoadWall();

	for (int nCntWall = 0; nCntWall < g_Meshwall.nNumTex; nCntWall++)
	{
		// テクスチャの読み込み
		D3DXCreateTextureFromFile(
			pDevice,
			g_Meshwall.wallType[nCntWall].aFileName,
			&g_Meshwall.wallType[nCntWall].pTextureMeshwall);
	}

	// ポインタを最初に戻す
	pInfo = &g_Meshwall.wallInfo[0];

	for (int nCntWall = 0; nCntWall < g_Meshwall.nNumWall; nCntWall++,pInfo++)
	{
		SetMeshwall(pInfo->pos, pInfo->rot, pInfo->fWidth, pInfo->fHeight, pInfo->nWidth, pInfo->nHeight);

		// 頂点バッファの生成
		pDevice->CreateVertexBuffer(
			sizeof(VERTEX_3D) * pInfo->nIdxPoint,
			D3DUSAGE_WRITEONLY,
			FVF_VERTEX_3D,
			D3DPOOL_MANAGED,
			&pInfo->pVtxBuffMeshwall,
			NULL);

		// インデックスバッファの生成
		pDevice->CreateIndexBuffer(
			sizeof(WORD) * pInfo->nAllPoint,
			D3DUSAGE_WRITEONLY,
			D3DFMT_INDEX16,
			D3DPOOL_MANAGED,
			&pInfo->pIdxBuffMeshwall,
			NULL);
	}

	return S_OK;
}

//==============================================================================
// 終了処理
//==============================================================================
void UninitMeshwall(void)
{
	// ローカル変数宣言
	WallInfo *pInfo = &g_Meshwall.wallInfo[0];
	WallType *pType = &g_Meshwall.wallType[0];

	for (int nCntInfo = 0; nCntInfo < g_Meshwall.nNumWall; nCntInfo++, pInfo++)
	{
		// 頂点バッファの開放
		if (pInfo->pVtxBuffMeshwall != NULL)
		{
			pInfo->pVtxBuffMeshwall->Release();
			pInfo->pVtxBuffMeshwall = NULL;
		}
		
		// インデックスバッファの開放
		if (pInfo->pIdxBuffMeshwall != NULL)
		{
			pInfo->pIdxBuffMeshwall->Release();
			pInfo->pIdxBuffMeshwall = NULL;
		}
	}

	for (int nCntType = 0; nCntType < g_Meshwall.nNumTex; nCntType++, pType++)
	{
		// テクスチャの開放
		if (pType->pTextureMeshwall != NULL)
		{
			pType->pTextureMeshwall->Release();
			pType->pTextureMeshwall = NULL;
		}
	}






}

//==============================================================================
// 更新処理
//==============================================================================
void UpdateMeshwall(void)
{
	// ローカル変数宣言
	VERTEX_3D *pVtx;
	WORD *pIdx;
	D3DXVECTOR3 p[100];

	WallInfo *pInfo = &g_Meshwall.wallInfo[0];
	//WallType *pType = &g_Meshwall.wallType[0];



	for (int nCntMax = 0; nCntMax < MAX_MWALL; nCntMax++, pInfo++)
	{
		if (pInfo->bUse == true)
		{
			// 頂点バッファをロックし、頂点情報へのポインタを取得
			pInfo->pVtxBuffMeshwall->Lock(0, 0, (void**)&pVtx, 0);

			// インデックスバッファをロックし、番号データへのポインタを取得
			pInfo->pIdxBuffMeshwall->Lock(0, 0, (void**)&pIdx, 0);

			for (int nCntWall = 0; nCntWall < pInfo->nHeightPoint; nCntWall++)
			{
				for (int nCnt = 0; nCnt < pInfo->nWidthPoint; nCnt++, pVtx++)
				{
					// ポリゴンの各頂点座標
					//pVtx[0].pos = D3DXVECTOR3(
					//	g_aMeshwall[nCntMax].pos.x - g_aMeshwall[nCntMax].fWidth + g_aMeshwall[nCntMax].fWidth * nCnt * 2 / WIDTH_WALL,
					//	g_aMeshwall[nCntMax].pos.y + g_aMeshwall[nCntMax].fHeight * 2 - g_aMeshwall[nCntMax].fHeight * nCntWall * 2 / HEIGHT_WALL,
					//	g_aMeshwall[nCntMax].pos.z);
					pVtx[0].pos = D3DXVECTOR3(
						-pInfo->fWidthMax / 2.0f + (float)nCnt * pInfo->fWidth,
						pInfo->fHeightMax / 2.0f - (float)nCntWall * pInfo->fHeight,
						0.0f);

					// 法線ベクトルの設定
					pVtx[0].nor = D3DXVECTOR3(0.0f, 0.0f, -1.0f);

					// 各頂点カラーの設定
					pVtx[0].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);

					// テクスチャ頂点情報の設定
					pVtx[0].tex = D3DXVECTOR2(1.0f * nCnt, 1.0f * nCntWall);
				}
			}

			for (int nCntA = 0; nCntA < pInfo->nHeight; nCntA++)
			{
				for (int nCnt = 0; nCnt < (pInfo->nWidthPoint + 1); nCnt++)
				{
					if (nCnt != 0 && nCnt == pInfo->nWidthPoint && nCntA != pInfo->nHeight - 1)
					{// 右端から折り返す時
						pIdx[0] = pIdx[-1];
						pIdx[1] = pIdx[-2] + 1;
					}
					else if (nCntA == pInfo->nHeight - 1 && nCnt == pInfo->nWidthPoint)
					{// 終了時に無視する
						break;
					}
					else
					{// 通常配置
						pIdx[0] = pInfo->nWidthPoint + (pInfo->nWidthPoint * nCntA) + nCnt;
						pIdx[1] = pIdx[0] - (pInfo->nWidthPoint);
					}
					pIdx += 2;
				}
			}

			// インデックスバッファをアンロックする
			pInfo->pIdxBuffMeshwall->Unlock();

			// 頂点バッファをアンロックする
			pInfo->pVtxBuffMeshwall->Unlock();
		}
	}

	//// 頂点バッファをロックし、頂点情報へのポインタを取得
	//g_pVtxBuffMeshwall->Lock(0, 0, (void**)&pVtx, 0);
	//// インデックスバッファをロックし、番号データへのポインタを取得
	//g_pIdxBuffMeshwall->Lock(0, 0, (void**)&pIdx, 0);
	////int a[120];
	//D3DXVECTOR3 b[1000];
	//int nMax = 0;
	//for (int nCnt = 0; nCnt < 4; nCnt++)
	//{
	//	nMax += g_aMeshwall[nCnt].nAllPoint;
	//}
	//for (int nCnt = 0; nCnt < nMax; nCnt++/*,pIdx++*/,pVtx++)
	//{
	//	b[nCnt] = pVtx[0].pos;
	//	//a[nCnt] = pIdx[0];
	//}
	//// 頂点バッファをアンロックする
	//g_pVtxBuffMeshwall->Unlock();
	//// インデックスバッファをアンロックする
	//g_pIdxBuffMeshwall->Unlock();
}

//==============================================================================
// 描画処理
//==============================================================================
void DrawMeshwall(void)
{
	// ローカル変数宣言
	LPDIRECT3DDEVICE9 pDevice;		// デバイスのポインタ
	D3DXMATRIX mtxRot, mtxTrans;	// 計算用マトリックス
	WallInfo *pInfo = &g_Meshwall.wallInfo[0];

	// デバイスの取得
	pDevice = GetDevice();

	for (int nCnt = 0; nCnt < MAX_MWALL; nCnt++,pInfo++)
	{
		if (pInfo->bUse == true)
		{
			// ワールドマトリックスの初期化
			D3DXMatrixIdentity(&pInfo->mtxWorld);

			// 向きの反映
			D3DXMatrixRotationYawPitchRoll(
				&mtxRot,
				pInfo->rot.y,
				pInfo->rot.x,
				pInfo->rot.z);

			D3DXMatrixMultiply(
				&pInfo->mtxWorld,
				&pInfo->mtxWorld,
				&mtxRot);

			// 位置を反映
			D3DXMatrixTranslation(
				&mtxTrans,
				pInfo->pos.x,
				pInfo->pos.y,
				pInfo->pos.z);

			D3DXMatrixMultiply(
				&pInfo->mtxWorld,
				&pInfo->mtxWorld,
				&mtxTrans);

			// ワールドマトリックスの設定
			pDevice->SetTransform(D3DTS_WORLD, &pInfo->mtxWorld);

			// 頂点バッファをデータストリームに設定
			pDevice->SetStreamSource(0, pInfo->pVtxBuffMeshwall, 0, sizeof(VERTEX_3D));

			// インデックスバッファをデータストリームに設定
			pDevice->SetIndices(pInfo->pIdxBuffMeshwall);

			// 頂点フォーマットの設定
			pDevice->SetFVF(FVF_VERTEX_3D);

			// テクスチャの設定
			pDevice->SetTexture(0, g_Meshwall.wallType[pInfo->nType].pTextureMeshwall);

			// ポリゴンの描画
			pDevice->DrawIndexedPrimitive(
				D3DPT_TRIANGLESTRIP,		// プリミティブの種類
				0,
				0,
				pInfo->nIdxPoint/*g_nIdxPointWall*/,				// 頂点数
				0,
				pInfo->nPolygon/*g_nPolygonWall*/);			// プリミティブ数
		}
	}
}

//==============================================================================
//	メッシュ壁の設定
//==============================================================================
void SetMeshwall(D3DXVECTOR3 pos, D3DXVECTOR3 rot, float fWidth, float fHeight,int nWidth,int nHeight)
{
	// ローカル変数宣言
	WallInfo *pInfo;
	pInfo = &g_Meshwall.wallInfo[0];
	//VERTEX_3D *pVtx;

	// 壁の設定
	for (int nCntWall = 0; nCntWall < MAX_MWALL; nCntWall++, pInfo++)
	{
		if (pInfo->bUse == false)
		{
			pInfo->pos = pos;				// 位置

			pInfo->rot = rot;				// 向き

			pInfo->fWidth = fWidth;			// 幅

			pInfo->fHeight = fHeight;		// 高さ

			pInfo->nWidth = nWidth;			// 列の数

			pInfo->nHeight = nHeight;		// 行の数

			pInfo->nWidthPoint = nWidth + 1;		// 幅の頂点数

			pInfo->nHeightPoint = nHeight + 1;		// 高さの頂点数

			pInfo->fWidthMax = pInfo->fWidth * (float)nWidth;

			pInfo->fHeightMax = pInfo->fHeight * (float)nHeight;

			pInfo->nAllPoint = nHeight * 2 * (nWidth + 2) - 2;
			pInfo->nPolygon = nWidth * nHeight * 2 + (4 * (nHeight - 1));
			pInfo->nIdxPoint = (nWidth + 1) * (nHeight + 1);

			pInfo->bUse = true;			// 使用状態

			break;
		}
	}
}

void CollisionWall(D3DXVECTOR3 *pPos, D3DXVECTOR3 *pPosOld, D3DXVECTOR3 move, float fWidthMax, float fWidthMin, float fDepthMax, float fDepthMin, float fHeightMax, float fHeightMin)
{

}

// 壁のテキスト読み込み
void LoadWall(void)
{
	// ローカル変数宣言
	FILE *pFile;
	char aEqual[2] = { NULL };					// 「=」読み取り用変数
	int nCntFile = 0;							// Xファイルの数
	bool bComment = false;						// コメントアウトするか
	char aText[TEXT_LENGTH] = { NULL };			// テキスト読み取り用変数
	char aWallSet[DATA_LENGTH] = { NULL };	// キャラデータ読み取り用変数

												// strcmp読み取り用ポインタ
	char *pText = &aText[0];
	char *pWallSet = &aWallSet[0];

	// データの読み込み
	pFile = fopen("data/TEXT/wall.txt", "r");
	if (pFile != NULL)
	{ //ファイル展開可能
		while (strcmp("END_SCRIPT", pText) != 0)
		{
			aText[0] = { NULL };
			if (bComment == false)
			{// コメントアウトしていない
				fscanf(pFile, "%s", &aText[0]);

				if (aText[0] == '#')
				{// 文字列の先頭が「#」ならばコメントアウト
					bComment = true;
				}
				else
				{// 通常時
					if (strcmp("NUM_WALL", pText) == 0)
					{// モデルの数
						fscanf(pFile, "%s %d", &aEqual[0], &g_Meshwall.nNumTex);
					}
					else if (strcmp("WALL_FILENAME", pText) == 0)
					{// Xファイル名の読み込み
						fscanf(pFile, "%s %s", &aEqual[0], &g_Meshwall.wallType[nCntFile].aFileName[0]);
						nCntFile++;
					}
					else if (strcmp("WALLSET", pText) == 0)
					{// キャラの情報
						aWallSet[0] = {};
						while (strcmp("END_WALLSET", pWallSet) != 0)
						{// キャラ情報の読み取り
							fscanf(pFile, "%s", &aWallSet[0]);
							if (strcmp("TYPE", pWallSet) == 0)
							{// 当たり判定
								fscanf(pFile, "%s %d", &aEqual[0], &g_Meshwall.wallInfo[g_Meshwall.nNumWall].nType);
							}
							else if (strcmp("SIZE", pWallSet) == 0)
							{// 壁の大きさ(縦横のマス数)
								fscanf(pFile, "%s %d %d", &aEqual[0], 
									&g_Meshwall.wallInfo[g_Meshwall.nNumWall].nWidth,
									&g_Meshwall.wallInfo[g_Meshwall.nNumWall].nHeight);
							}
							else if (strcmp("WIDTH", pWallSet) == 0)
							{// 幅
								fscanf(pFile, "%s %f", &aEqual[0],
									&g_Meshwall.wallInfo[g_Meshwall.nNumWall].fWidth);
							}
							else if (strcmp("HEIGHT", pWallSet) == 0)
							{// 高さ
								fscanf(pFile, "%s %f", &aEqual[0],
									&g_Meshwall.wallInfo[g_Meshwall.nNumWall].fHeight);
							}
							else if (strcmp("POS", pWallSet) == 0)
							{// 位置
								fscanf(pFile, "%s %f %f %f", &aEqual[0],
									&g_Meshwall.wallInfo[g_Meshwall.nNumWall].pos.x,
									&g_Meshwall.wallInfo[g_Meshwall.nNumWall].pos.y,
									&g_Meshwall.wallInfo[g_Meshwall.nNumWall].pos.z);

							}
							else if (strcmp("ROT", pWallSet) == 0)
							{// 角度
								fscanf(pFile, "%s %f %f %f", &aEqual[0],
									&g_Meshwall.wallInfo[g_Meshwall.nNumWall].rot.x,
									&g_Meshwall.wallInfo[g_Meshwall.nNumWall].rot.y,
									&g_Meshwall.wallInfo[g_Meshwall.nNumWall].rot.z);
							}
						}
						g_Meshwall.nNumWall++;
					}
				}
			}
			else if (bComment == true)
			{// コメントアウト処理
			 // ローカル変数宣言
				char a = NULL;
				char b = NULL;
				fscanf(pFile, "%c", &a);
				while (a != '\n' && b != '\n')
				{
					fscanf(pFile, "%s", &aText[0]);
					fscanf(pFile, "%c", &b);
				}
				bComment = false;
			}
		}
		fclose(pFile);
	}
	else
	{ // ファイル展開不可
	}
}