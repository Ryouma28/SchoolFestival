//========================================================================================
//
// ����[flower.h]
// Author : masayasu wakita
//
//========================================================================================
#ifndef _FLOWER_H_
#define _FLOWER_H_
//========================================================================================
// �C���N���[�h�t�@�C��
//========================================================================================
#include "main.h"

//========================================================================================
// �\����
//========================================================================================
typedef enum
{
	TEXTURETYPE_FLOWER = 0,
	TEXTURETYPE_CONTOUR,
	TEXTURETYPE_CORE,
	TEXTURETYPE_WAVE,
	TEXTURETYPE_MAX
} TEXTURETYPE;

typedef struct
{
	D3DXVECTOR3 pos;							//���݂̈ʒu
	D3DXVECTOR3 size;							//�T�C�Y
	D3DXVECTOR3 rot;							//��]���
	float fAngle;								//
	float fLength;
} FLOWER;

//========================================================================================
// �v���g�^�C�v�錾
//========================================================================================
void InitFlower(void);
void UninitFlower(void);
void UpdateFlower(void);
void DrawFlower(void);
void MakeVertexFlower(int nIndex, D3DXVECTOR3 pos, D3DXVECTOR3 size);
#endif