//=============================================================================
//
// ���x������ [level.cpp]
// Author : HIROYUKI KAWAHIGASHI
//
//=============================================================================
#include "level.h"

//=============================================================================
// �}�N����`
//=============================================================================
#define	TEXTURE_LEVEL		"data/tex/number3D.png"	// �ǂݍ��ރe�N�X�`���t�@�C����

//=============================================================================
// �v���g�^�C�v�錾
//=============================================================================
void MakeVertexLevel(LPDIRECT3DDEVICE9 pDevice);

//=============================================================================
// �O���[�o���ϐ��錾
//=============================================================================
LPDIRECT3DTEXTURE9		g_pTextureLevel = NULL;	// �e�N�X�`���ւ̃|�C���^
LPDIRECT3DVERTEXBUFFER9 g_pVtxBuffLevel = NULL;	// ���_�o�b�t�@�ւ̃|�C���^

int						g_nLevel;				// �X�R�A

//=============================================================================
// ����������
//=============================================================================
void InitLevel(void)
{
	LPDIRECT3DDEVICE9 pDevice = GetDevice();
	g_nLevel = 0;

	// �e�N�X�`���̓ǂݍ���
	D3DXCreateTextureFromFile(pDevice,				// �f�o�C�X�ւ̃|�C���^
		TEXTURE_LEVEL,		// �t�@�C���̖��O
		&g_pTextureLevel);	// �ǂݍ��ރ������[

	// �I�u�W�F�N�g�̒��_�o�b�t�@�𐶐�
	pDevice->CreateVertexBuffer(sizeof(VERTEX_2D) * 4,
		D3DUSAGE_WRITEONLY,
		FVF_VERTEX_2D,
		D3DPOOL_MANAGED,
		&g_pVtxBuffLevel,
		NULL);

	// ���_���̍쐬
	MakeVertexLevel(pDevice);
}

//=============================================================================
// �I������
//=============================================================================
void UninitLevel(void)
{
	//�e�N�X�`���̊J��
	if (g_pTextureLevel != NULL)
	{
		g_pTextureLevel->Release();
		g_pTextureLevel = NULL;
	}
	//���_�o�b�t�@�̊J��
	if (g_pVtxBuffLevel != NULL)
	{
		g_pVtxBuffLevel->Release();
		g_pVtxBuffLevel = NULL;
	}
}

//=============================================================================
// �X�V����
//=============================================================================
void UpdateLevel(void)
{

}

//=============================================================================
// �`�揈��
//=============================================================================
void DrawLevel(void)
{
	LPDIRECT3DDEVICE9 pDevice = GetDevice();

	// ���_�o�b�t�@���f�o�C�X�̃f�[�^�X�g���[���Ƀo�C���h
	pDevice->SetStreamSource(0, g_pVtxBuffLevel, 0, sizeof(VERTEX_2D));

	// ���_�t�H�[�}�b�g�̐ݒ�
	pDevice->SetFVF(FVF_VERTEX_2D);

	// �e�N�X�`���̐ݒ�
	pDevice->SetTexture(0, g_pTextureLevel);

	// �|���S���̕`��
	pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, 0, 2);
}

//=============================================================================
// ���_�̍쐬
//=============================================================================
void MakeVertexLevel(LPDIRECT3DDEVICE9 pDevice)
{
	VERTEX_2D *pVtx; //���_���ւ̃|�C���^

	// �I�u�W�F�N�g�̒��_�o�b�t�@�𐶐�
	pDevice->CreateVertexBuffer(sizeof(VERTEX_2D) * 4,
		D3DUSAGE_WRITEONLY,
		FVF_VERTEX_2D,
		D3DPOOL_MANAGED,
		&g_pVtxBuffLevel,
		NULL);

	//���_�f�[�^�͈̔͂����b�N���A���_�o�b�t�@�ւ̃|�C���^�擾
	g_pVtxBuffLevel->Lock(0, 0, (void**)&pVtx, 0);

	//���_���W�̐ݒ�(�E���Őݒ肷��)
	pVtx[0].pos = D3DXVECTOR3(90.0f, 10.0f, 0.0f);
	pVtx[1].pos = D3DXVECTOR3(120.0f, 10.0f, 0.0f);
	pVtx[2].pos = D3DXVECTOR3(90.0f, 70.0f, 0.0f);
	pVtx[3].pos = D3DXVECTOR3(120.0f, 70.0f, 0.0f);

	//�������W(1.0�ŌŒ�)
	pVtx[0].rhw = 1.0f;
	pVtx[1].rhw = 1.0f;
	pVtx[2].rhw = 1.0f;
	pVtx[3].rhw = 1.0f;

	//�F�̐ݒ�
	pVtx[0].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
	pVtx[1].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
	pVtx[2].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
	pVtx[3].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);

	//�e�N�X�`�����W�̐ݒ�
	pVtx[0].tex = D3DXVECTOR2(0.0f, 0.0f);
	pVtx[1].tex = D3DXVECTOR2(0.1f, 0.0f);
	pVtx[2].tex = D3DXVECTOR2(0.0f, 1.0f);
	pVtx[3].tex = D3DXVECTOR2(0.1f, 1.0f);

	//���_�f�[�^���A�����b�N
	g_pVtxBuffLevel->Unlock();
}

//=============================================================================
// �X�R�A�̕ύX
//=============================================================================
void AddLevel(int nValue)
{
	VERTEX_2D *pVtx; //���_���ւ̃|�C���^
	int nNumber;

	if (nValue >= 3)
	{
		nValue = 3;
	}
	g_nLevel = nValue;

	//���_�f�[�^�͈̔͂����b�N���A���_�o�b�t�@�ւ̃|�C���^�擾
	g_pVtxBuffLevel->Lock(0, 0, (void**)&pVtx, 0);

	nNumber = g_nLevel % (int)pow(10.0f, 1) / (int)pow(10.0f, 0);

	//�e�N�X�`�����W�̐ݒ�
	pVtx[0].tex = D3DXVECTOR2((float)nNumber * 0.1f, 0.0f);
	pVtx[1].tex = D3DXVECTOR2((float)nNumber * 0.1f + 0.1f, 0.0f);
	pVtx[2].tex = D3DXVECTOR2((float)nNumber * 0.1f, 1.0f);
	pVtx[3].tex = D3DXVECTOR2((float)nNumber * 0.1f + 0.1f, 1.0f);

	//���_�f�[�^���A�����b�N
	g_pVtxBuffLevel->Unlock();
}

