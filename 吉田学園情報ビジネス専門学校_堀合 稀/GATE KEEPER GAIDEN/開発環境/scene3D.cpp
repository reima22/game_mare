//==============================================================================
//
// 3Dポリゴン描画処理〔scene3D.cpp〕
// Author : Mare Horiai
//
//==============================================================================
#include "main.h"
#include "scene3D.h"
#include "renderer.h"
#include "manager.h"
#include "input.h"
#include "player.h"
#include "texture.h"
#include "fade.h"

//==============================================================================
// コンストラクタ
//==============================================================================
CScene3D::CScene3D(int nPriority) : CScene(nPriority)
{
	m_pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_rot = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
}

//==============================================================================
// デストラクタ
//==============================================================================
CScene3D::~CScene3D()
{

}

//==============================================================================
// ポリゴン描画の初期化処理
//==============================================================================
HRESULT CScene3D::Init(D3DXVECTOR3 pos)
{
	return S_OK;
}

//==============================================================================
// ポリゴン描画の終了処理
//==============================================================================
void CScene3D::Uninit(void)
{
	// 頂点バッファの開放
	if (m_pVtxBuff != NULL)
	{
		m_pVtxBuff->Release();
		m_pVtxBuff = NULL;
	}

	Release();
}

//==============================================================================
// ポリゴン描画の更新処理
//==============================================================================
void CScene3D::Update(void)
{

}

//==============================================================================
// ポリゴン描画の描画処理
//==============================================================================
void CScene3D::Draw(void)
{

}

//==============================================================================
// 3Dポリゴンの生成
//==============================================================================
CScene3D *CScene3D::Create(D3DXVECTOR3 pos)
{
	// ローカル変数宣言
	CScene3D *pScene3D;
	pScene3D = new CScene3D;

	if (pScene3D != NULL)
	{
		pScene3D->Init(pos);
	}

	return pScene3D;
}