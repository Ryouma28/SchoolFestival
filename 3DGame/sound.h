//=============================================================================
//
// �T�E���h���� [sound.h]
// Author : masayasu wakita
//
//=============================================================================
#ifndef _SOUND_H_
#define _SOUND_H_

#include "main.h"

//=============================================================================
// �T�E���h�t�@�C��
//=============================================================================
typedef enum
{
	SOUND_LABEL_BGM000 = 0,		// BGM0
	SOUND_LABEL_BGM001,			// BGM1
	SOUND_LABEL_SE_JUMP,		// �W�����v��
	SOUND_LABEL_SE_SLASH,		// �q���b
	SOUND_LABEL_MAX,
} SOUND_LABEL;

typedef struct
{
	D3DXVECTOR3		position;										// �ʒu
	D3DXVECTOR3		rotation;										// ��]
	D3DXVECTOR3		velocity;										// ���x
	D3DXVECTOR3		normalize;										//������x�N�g��
	float			SourceVoiceChannelVolumes;						// �{�����[��
	bool			bUse;											// 3D�T�E���h�̎g�p
} SOUND;

//=============================================================================
// �v���g�^�C�v�錾
//=============================================================================
HRESULT InitSound(HWND hWnd);
void UninitSound(void);

HRESULT PlaySound(SOUND_LABEL label, bool Stereophonic);
void StopSound(SOUND_LABEL label);
void StopSound(void);

void UpdateSound(void);
void UpdateListener(D3DXVECTOR3 pos, D3DXVECTOR3 move, D3DXVECTOR3 rot, D3DXVECTOR3 nor);
void UpdateEmitter(SOUND_LABEL label, D3DXVECTOR3 pos, D3DXVECTOR3 move, D3DXVECTOR3 rot, D3DXVECTOR3 nor);
void SetVolume(SOUND_LABEL label, float fVolume);
#endif
