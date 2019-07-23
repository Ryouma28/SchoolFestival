//=============================================================================
//
// �o���l���� [EXP.cpp]
// Author : Seiya Takahashi
//
//=============================================================================
#define _CRT_SECURE_NO_WARNINGS
#include "EXP.h"
#include "fade.h"
#include "player.h"

//=============================================================================
// �}�N����`
//=============================================================================
#define TEXTURE_ADD_EXPbar	"data/tex/HPbar.png"		//�ǂݍ��ރe�N�X�`���t�@�C����
#define TEXTURE_ADD_EXPframe "data/tex/HPFrame.png"		//�ǂݍ��ރe�N�X�`���t�@�C����
#define MAX_EXP (2)									//�e�N�X�`������
#define MAX_WIDTH (70.0f)									//�摜�̕��̍ő�l
#define MAX_HEIGHT (70.0f)									//�摜�̍����̍ő�l

//=============================================================================
// �v���g�^�C�v�錾
//=============================================================================

//=============================================================================
// �O���[�o���ϐ��錾
//=============================================================================
LPDIRECT3DTEXTURE9		g_pTextureEXP[MAX_EXP] = {};				// �e�N�X�`���ւ̃|�C���^
LPDIRECT3DVERTEXBUFFER9 g_pVtxBuffEXP = NULL;

EXP g_EXP;
//=============================================================================
// ����������
//=============================================================================
void InitEXP(void)
{
	LPDIRECT3DDEVICE9 pDevice = GetDevice();
	PLAYER *pPlayer = GetPlayer();

	g_EXP.fNowEXP = 0;
	g_EXP.fHeight = MAX_WIDTH;

	//�e�N�X�`���̓ǂݍ���
	D3DXCreateTextureFromFile(pDevice, TEXTURE_ADD_EXPbar, &g_pTextureEXP[0]);
	D3DXCreateTextureFromFile(pDevice, TEXTURE_ADD_EXPframe, &g_pTextureEXP[1]);

	// ���_���̍쐬
	pDevice->CreateVertexBuffer(sizeof(VERTEX_2D) * 4 * MAX_EXP,
		D3DUSAGE_WRITEONLY,
		FVF_VERTEX_2D,
		D3DPOOL_MANAGED,
		&g_pVtxBuffEXP,
		NULL);

	//�e�N�X�`���ݒ�
	SetVertexEXP(0, D3DXVECTOR3(70, 70, 0), D3DXCOLOR(1.0f, 0.27f, 0.0f, 1.0f), MAX_WIDTH, MAX_HEIGHT);

	SetVertexEXP(1, D3DXVECTOR3(70, 70, 0), D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f), MAX_WIDTH, MAX_HEIGHT);

}
//=============================================================================
// �I������
//=============================================================================
void UninitEXP(void)
{
	int nCntTex;

	for (nCntTex = 0; nCntTex < MAX_EXP; nCntTex++)
	{
		//�e�N�X�`���̊J��
		if (g_pTextureEXP[nCntTex] != NULL)
		{
			g_pTextureEXP[nCntTex]->Release();
			g_pTextureEXP[nCntTex] = NULL;
		}
	}

	//���_�o�b�t�@�̊J��
	if (g_pVtxBuffEXP != NULL)
	{
		g_pVtxBuffEXP->Release();
		g_pVtxBuffEXP = NULL;
	}
}
//=============================================================================
// �X�V����
//=============================================================================
void UpdateEXP(void)
{
	PLAYER *pPlayer = GetPlayer();
	float NowEXP;
	float fHeight;																	//���݂̉摜�̕�

	//�v���C���[���x����1�̂Ƃ�
	if (pPlayer->nNowLevel == 1)
	{
		//���݂̌o���l�����̂܂ܑ��
		g_EXP.fNowEXP = pPlayer->fNowEXP;												//���݂̌o���l
	}
	//�v���C���[���x����2����3�̂Ƃ�
	else if (pPlayer->nNowLevel == 2 || pPlayer->nNowLevel == 3)
	{
		//���݂̌o���l����O�̃��x���̌o���l����̍�������
		g_EXP.fNowEXP = pPlayer->fNowEXP - pPlayer->nLevelUp[pPlayer->nNowLevel - 1];
	}

	//���x�����ő�̂Ƃ�
	if (pPlayer->nNowLevel == MAX_LEVEL)
	{
		//�ő僌�x���̌o���l�������O�̌o���l����̍�������
		NowEXP = g_EXP.fNowEXP / (pPlayer->nLevelUp[MAX_LEVEL + 1] - pPlayer->nLevelUp[pPlayer->nNowLevel]);//�o���l�̔䗦�v�Z
	}
	else
	{
		//����̃��x���̌o���l��������̃��x���̌o���l����̍�������
		NowEXP = g_EXP.fNowEXP / (pPlayer->nLevelUp[pPlayer->nNowLevel + 1] - pPlayer->nLevelUp[pPlayer->nNowLevel]);//�o���l�̔䗦�v�Z
	}

	//�`�悷�ׂ��摜���@���@�䗦�@�~�@�ő�̒���
	fHeight = NowEXP * g_EXP.fHeight;												//�`�悷�ׂ��摜����������Ȃ̂�

	//�������ő咷���ȏ�ɂȂ�����
	if (fHeight >= g_EXP.fHeight)
	{
		fHeight = 0;
	}

	//�ݒ�
	SetVertexEXP(0, D3DXVECTOR3(70, 70, 0), D3DXCOLOR(1.0f, 0.27f, 0.0f, 1.0f), MAX_WIDTH, fHeight);
}
//=============================================================================
// �`�揈��
//=============================================================================
void DrawEXP(void)
{
	int nCntTex;
	LPDIRECT3DDEVICE9 pDevice;

	//�f�o�C�X���擾����
	pDevice = GetDevice();

	//���_�o�b�t�@���f�o�C�X�̃f�[�^�X�g���[���Ƀo�C���h
	pDevice->SetStreamSource(0, g_pVtxBuffEXP, 0, sizeof(VERTEX_2D));

	//���_�t�H�[�}�b�g�̐ݒ�
	pDevice->SetFVF(FVF_VERTEX_2D);

	for (nCntTex = 0; nCntTex < MAX_EXP; nCntTex++)
	{
		//�e�N�X�`���̐ݒ�
		pDevice->SetTexture(0, g_pTextureEXP[nCntTex]);

		//�|���S���`��
		pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, nCntTex * 4, 2);
	}
}

//=============================================================================
// ���_�̐ݒ�
//=============================================================================
void SetVertexEXP(int index, D3DXVECTOR3 pos, D3DXCOLOR col, float fWidth, float fHeight)
{
	VERTEX_2D *pVtx;										//���_���ւ̃|�C���^

	//���_�f�[�^�͈̔͂����b�N���A���_�o�b�t�@�ւ̃|�C���^���擾
	g_pVtxBuffEXP->Lock(0, 0, (void**)&pVtx, 0);

	pVtx += index * 4;					//���_��4�����Z

	// ���_���̐ݒ�
	//���_���W�̐ݒ�(���x���W + �Ԋu * nCntScore (+ ��), ���y���W)
	pVtx[0].pos = D3DXVECTOR3(pos.x, pos.y, 0);
	pVtx[1].pos = D3DXVECTOR3(pos.x, pos.y - fHeight, 0);
	pVtx[2].pos = D3DXVECTOR3(pos.x + fWidth, pos.y, 0);
	pVtx[3].pos = D3DXVECTOR3(pos.x + fWidth, pos.y - fHeight, 0);

	//1.0�ŌŒ�
	pVtx[0].rhw = 1.0f;
	pVtx[1].rhw = 1.0f;
	pVtx[2].rhw = 1.0f;
	pVtx[3].rhw = 1.0f;

	//�J���[�`���[�g�̐ݒ�
	pVtx[0].col = col;
	pVtx[1].col = col;
	pVtx[2].col = col;
	pVtx[3].col = col;

	//�e�N�X�`���`�ʂ̈ʒu
	pVtx[0].tex = D3DXVECTOR2(0.0f, 0.0f);
	pVtx[1].tex = D3DXVECTOR2(1.0f, 0.0f);
	pVtx[2].tex = D3DXVECTOR2(0.0f, 1.0f);
	pVtx[3].tex = D3DXVECTOR2(1.0f, 1.0f);

	//���_�f�[�^�̃A�����b�N
	g_pVtxBuffEXP->Unlock();

}

//=============================================================================
// �̗͂̎擾
//=============================================================================
EXP GetEXP(void)
{
	return g_EXP;
}
