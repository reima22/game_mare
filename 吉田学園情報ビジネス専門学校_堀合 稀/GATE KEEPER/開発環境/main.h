//==============================================================================
//
// ウィンドウの表示(main.h)
// Author : Mare Horiai
//
//==============================================================================
#pragma once
#include <windows.h>
#include "d3dx9.h"						// 描画処理に必要
#define DIRECTINPUT_VERSION	(0x0800)
#include "dinput.h"						// 入力処理に必要
#include "xaudio2.h"					// サウンド再生に必要 

//==============================================================================
// ライブラリのリンク
//==============================================================================
#pragma comment(lib, "d3d9.lib")	// 描画処理に必要
#pragma comment(lib, "d3dx9.lib")	// 拡張ライブラリ
#pragma comment(lib, "dxguid.lib")	// コンポーネント(部品)使用に必要
#pragma comment(lib, "dinput8.lib")	// 入力処理に必要
#pragma comment(lib, "winmm.lib")

//==============================================================================
// マクロ定義
//==============================================================================
#define CLASS_NAME		"WindowClass"	// ウィンドウクラスの名前
#define WINDOW_NAME		"Gate Keeper"	// ウィンドウの名前
#define SCREEN_WIDTH	(1280)		// 画面の幅
#define SCREEN_HEIGHT	(720)		// 画面の高さ
#define FVF_VERTEX_2D	(D3DFVF_XYZRHW | D3DFVF_DIFFUSE | D3DFVF_TEX1)	// 頂点フォーマット
#define POSPLAYERX		(640)	// プレイヤーの初期中心X座標
#define POSPLAYERY		(568)	// プレイヤーの初期中心Y座標
#define BULLETNUM		(256)	// 弾の最大数
#define BULLET_TYPE		(5)		// 弾の種類
#define WINDOW_LOWEST	(588)	// プレイ画面の底辺
#define SPEEDUP			(3)		// 移動の加速度
#define SPEEDDOWN		(0.2f)	// 減衰係数

//==============================================================================
// 頂点フォーマットに合わせた構造体
//==============================================================================
typedef struct
{
	D3DXVECTOR3 pos;	// 頂点座標
	float rhw;			// 1.0で固定
	D3DCOLOR col;		// 頂点カラー
	D3DXVECTOR2 tex;	// テクスチャ座標
} VERTEX_2D;

//==============================================================================
// モードの種類
//==============================================================================
typedef enum
{
	MODE_TITLE = 0,	// タイトル画面
	MODE_TUTORIAL,	// チュートリアル画面
	MODE_GAME,		// ゲーム画面
	MODE_RESULT,	// リザルト画面
	MODE_RANKING,	// ランキング画面
	MODE_MAX
}MODE;

//==============================================================================
// プロトタイプ宣言
//==============================================================================
LPDIRECT3DDEVICE9 GetDevice(void);
void SetMode(MODE mode);
MODE GetMode(void);