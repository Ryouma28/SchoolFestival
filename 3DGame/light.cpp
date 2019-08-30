//=============================================================================
//
// ライト処理 [light.cpp]
// Author : 
//
//=============================================================================
#include "light.h"
#include "input.h"

//=============================================================================
// マクロ定義
//=============================================================================

//=============================================================================
// プロトタイプ宣言
//=============================================================================


//=============================================================================
// グローバル変数
//=============================================================================
D3DLIGHT9 g_aLight[3];			//ライト情報

//=============================================================================
// ライトの初期化処理
//=============================================================================
void InitLight(void)
{
	LPDIRECT3DDEVICE9 pDevice = GetDevice();	// デバイスの取得
	D3DXVECTOR3 vecDir[3];						//設定用ベクトル

	// ライトをクリアする
	for (int nCount = 0; nCount < 3; nCount++)
	{
		ZeroMemory(&g_aLight[nCount], sizeof(D3DLIGHT9));
	}

	// ライトの種類を設定
	g_aLight[0].Type = D3DLIGHT_DIRECTIONAL;
	// ライトの種類を設定
	g_aLight[1].Type = D3DLIGHT_DIRECTIONAL;
	// ライトの種類を設定
	g_aLight[2].Type = D3DLIGHT_DIRECTIONAL;

	// ライトの拡散光を設定
	g_aLight[0].Diffuse = D3DXCOLOR(1.0f, 1.0f, 1.0f, 0.0f);
	// ライトの拡散光を設定
	g_aLight[1].Diffuse = D3DXCOLOR(0.65f, 0.65f, 0.65f, 0.0f);
	// ライトの拡散光を設定
	g_aLight[2].Diffuse = D3DXCOLOR(0.15f, 0.15f, 0.15f, 0.0f);

	// ライトの方向の設定
	vecDir[0] = D3DXVECTOR3(0.22f, -0.87f, 0.44f);
	D3DXVec3Normalize(&vecDir[0], &vecDir[0]);			//正規化する
	g_aLight[0].Direction = vecDir[0];

	// ライトの方向の設定
	vecDir[1] = D3DXVECTOR3(-0.18f, 0.88f, -0.44f);
	D3DXVec3Normalize(&vecDir[1], &vecDir[1]);			//正規化する
	g_aLight[1].Direction = vecDir[1];

	// ライトの方向の設定
	vecDir[2] = D3DXVECTOR3(0.0f, -0.11f, -0.11f);
	D3DXVec3Normalize(&vecDir[2], &vecDir[2]);			//正規化する
	g_aLight[2].Direction = vecDir[2];

	// ライトを設定する
	pDevice->SetLight(0, &g_aLight[0]);

	// ライトを設定する
	pDevice->SetLight(1, &g_aLight[1]);

	// ライトを設定する
	pDevice->SetLight(2, &g_aLight[2]);

	// ライトを有効にする
	pDevice->LightEnable(0, TRUE);

	// ライトを有効にする
	pDevice->LightEnable(1, TRUE);
	
	// ライトを有効にする
	pDevice->LightEnable(2, TRUE);
}

//=============================================================================
// ライトの終了処理
//=============================================================================
void UninitLight(void)
{

}

//=============================================================================
// ライトの更新処理
//=============================================================================
void UpdateLight(void)
{

}