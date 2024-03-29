//==============================================================================
//
// 選択画面の描画〔select.h〕
// AUTHOR : MARE HORIAI
//
//==============================================================================
#pragma once
#ifndef _SELECT_H_
#define _SELECT_H_
#include "main.h"

//==============================================================================
// マクロ定義
//==============================================================================
#define BG_NUM		(1)			// 背景数
#define MODE_NUM	(2)			// モードの種類数
#define CHARA_NUM	(3)			// キャラの種類数
#define STAGE_NUM	(3)			// ステージの種類数
#define ALL_SET		(32)	// 配置最大数
#define ALL_TEX		(16)	// テクスチャ最大
#define SELECT_MOVE	(10.0f)	// セレクト画面のポリゴン移動力

//==============================================================================
// モード選択列挙
//==============================================================================
typedef enum
{
	PLAYMODE_0 = 0,
	PLAYMODE_1,
	PLAYMODE_MAX
}PlayMode;

//==============================================================================
// キャラ選択列挙
//==============================================================================
typedef enum
{
	CHARA_0 = 0,
	CHARA_1,
	CHARA_2,
	CHARA_MAX
}Chara;

//==============================================================================
// ステージ選択列挙
//==============================================================================
typedef enum
{
	STAGE_0 = 0,
	STAGE_1,
	STAGE_2,
	STAGE_MAX
}Stage;

//==============================================================================
// 選択パターン
//==============================================================================
typedef enum
{
	SELECTTYPE_MODE = 0,	// プレイモード
	SELECTTYPE_CHARA,		// キャラクター
	SELECTTYPE_STAGE,		// ステージ
	SELECTTYPE_MAX
}SelectType;

//==============================================================================
// テクスチャパターン
//==============================================================================
typedef enum
{
	ST_BG = 0,	// 背景
	ST_MODE,	// モード選択
	ST_CHARA,	// キャラ選択
	ST_STAGE,	// ステージ選択
	ST_MAX
}SelectTex;

//==============================================================================
// 選択画面詳細の構造体
//==============================================================================
typedef struct
{
	D3DXVECTOR3 pos;			// 位置
	D3DXVECTOR3 move;			// 移動量
	D3DXCOLOR col;				// 色
	float fWidth;				// 幅
	float fHeight;				// 高さ
	int nType;					// テクスチャのタイプ数
	SelectTex st;				// 使用されるパターン
	char aFileName[64];			// ファイル名
	bool bUse = false;			// 使用状態
}SelectInfo;

//==============================================================================
// 選択画面の構造体
//==============================================================================
typedef struct
{
	SelectInfo selectInfo[ALL_SET];	// 選択画面情報
	int nNumTexSelect;				// 使用テクスチャ数
	int nNumSelect;					// ポリゴン数
	int nCntPage;					// 選択画面カウント
	bool bMove;						// 移動状態
	bool bBack;						// 選択キャンセル
	int nMoveCnt;					// 移動カウント
	PlayMode mode;					// 選択モードの種類
	Chara chara[2];					// 選択キャラの種類
	bool bDecide[2];				// キャラ選択決定
	Stage stage;					// 選択ステージの種類
	int nCntAnim;					// 選択画面のアニメーション
	SelectType SType;				// どの選択か
	bool b2PlayerOn;				// 2Pが有効
}Select;

//==============================================================================
// プロトタイプ宣言
//==============================================================================
HRESULT InitSelect(void);			// 選択画面の初期化処理
void UninitSelect(void);			// 選択画面の終了処理
void UpdateSelect(void);			// 選択画面の更新処理
void DrawSelect(void);				// 選択画面の描画処理
void SelectManager(void);			// 選択画面の管理
void TexSetSelect(void);			// テクスチャの設定
void LoadSelect(void);				// テキストロード
void SetVertexSelect(int nIdx);		// 頂点情報更新
void SelectCursor(SelectType ST);	// 選択カーソル制御
Select *GetSelect(void);			// 選択情報の取得

#endif