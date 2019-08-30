//=============================================================================
//
// フェード処理 [fade.h]
// Author : HIROYUKI KAWAHIGASHI
//
//=============================================================================
#ifndef _FADE_H_
#define _FADE_H_

#define _CRT_SECURE_NO_WARNINGS

//=============================================================================
// インクルードファイル
//=============================================================================
#include "main.h"

//=============================================================================
// フェードの状態
//=============================================================================
typedef enum
{
	FADE_NONE = 0,		// 何もない状態
	FADE_IN,			// フェードイン処理
	FADE_OUT,			// フェードアウト処理
	FADE_MAX
} FADE;

//=============================================================================
// プロトタイプ宣言
//=============================================================================
void InitFade(MODE modeNext);	
void UninitFade(void);
void UpdateFade(void);
void DrawFade(void);

void SetFade(MODE modeNext);
FADE GetFade(void);

#endif
