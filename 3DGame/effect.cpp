//=============================================================================
//
// �G�t�F�N�g���� [effect.cpp]
// Author : masayasu wakita
//
//=============================================================================
#include "effect.h"

//=============================================================================
// �}�N����`
//=============================================================================
#define MAX_EFFECT 3000										//�e�̍ő�l

//=============================================================================
// �v���g�^�C�v�錾
//=============================================================================

//=============================================================================
// �\���̒�`
//=============================================================================
typedef struct
{
	D3DXVECTOR3 pos;										//�ʒu
	D3DXVECTOR3 rot;										//��]
	D3DXVECTOR3 size;										//�T�C�Y
	D3DXMATRIX	mtxWorld;									//���[���h�}�g���b�N�X
	D3DXCOLOR col;											//�J���[
	float fRadius;											//���a
	int nLife;												// ���C�t
	bool bUse;												//�g�p���Ă��邩�ǂ���
	bool bAuthorization;									//�G�t�F�N�g���ŕҏW���邱�Ƃ������邩�ǂ���
} EFFECT;

//=============================================================================
// �O���[�o���ϐ�
//=============================================================================
LPDIRECT3DTEXTURE9		g_pTextureEffect = NULL;			//�e�N�X�`���ւ̃|�C���^
LPDIRECT3DVERTEXBUFFER9 g_pVtxBuffEffect = NULL;			//���_�o�b�t�@�ւ̃|�C���^
EFFECT g_aEffect[MAX_EFFECT];								//�e

//=============================================================================
// ����������
//=============================================================================
void InitEffect(void)
{
	LPDIRECT3DDEVICE9 pDevice = GetDevice();	// �f�o�C�X�̎擾

												//�e�N�X�`���̓ǂݍ���
	D3DXCreateTextureFromFile(pDevice, "data/tex/shadow000.jpg", &g_pTextureEffect);

	// ���_���̍쐬
	pDevice->CreateVertexBuffer(sizeof(VERTEX_3D) * 4 * MAX_EFFECT, D3DUSAGE_WRITEONLY, FVF_VERTEX_3D, D3DPOOL_MANAGED, &g_pVtxBuffEffect, NULL);
	VERTEX_3D *pVtx;

	//���_�f�[�^�͈̔͂����b�N���A���_�o�b�t�@�ւ̃|�C���^���擾
	g_pVtxBuffEffect->Lock(0, 0, (void**)&pVtx, 0);

	// �ʒu�E��]�̏����ݒ�
	for (int nCntEffect = 0; nCntEffect < MAX_EFFECT; nCntEffect++)
	{
		g_aEffect[nCntEffect].pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
		g_aEffect[nCntEffect].rot = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
		g_aEffect[nCntEffect].size = D3DXVECTOR3(5.0f, 5.0f, 0.0f);
		g_aEffect[nCntEffect].nLife = 0;
		g_aEffect[nCntEffect].bUse = false;

		//���_���W�̐ݒ�
		pVtx[0].pos = D3DXVECTOR3(-g_aEffect[nCntEffect].size.x, g_aEffect[nCntEffect].size.y, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(g_aEffect[nCntEffect].size.x, g_aEffect[nCntEffect].size.y, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(-g_aEffect[nCntEffect].size.x, -g_aEffect[nCntEffect].size.y, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(g_aEffect[nCntEffect].size.x, -g_aEffect[nCntEffect].size.y, 0.0f);

		//�@���x�N�g��
		pVtx[0].nor = D3DXVECTOR3(0.0f, 1.0f, 0.0f);
		pVtx[1].nor = D3DXVECTOR3(0.0f, 1.0f, 0.0f);
		pVtx[2].nor = D3DXVECTOR3(0.0f, 1.0f, 0.0f);
		pVtx[3].nor = D3DXVECTOR3(0.0f, 1.0f, 0.0f);

		//���_�J���[
		pVtx[0].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f);
		pVtx[1].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f);
		pVtx[2].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f);
		pVtx[3].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, 1.0f);

		//�e�N�X�`���`�ʂ̈ʒu
		pVtx[0].tex = D3DXVECTOR2(0.0f, 0.0f);
		pVtx[1].tex = D3DXVECTOR2(1.0f, 0.0f);
		pVtx[2].tex = D3DXVECTOR2(0.0f, 1.0f);
		pVtx[3].tex = D3DXVECTOR2(1.0f, 1.0f);

		pVtx += 4;
	}
	//���_�f�[�^�̃A�����b�N
	g_pVtxBuffEffect->Unlock();

	//MakeVertexPolygon(pDevice);
}

//=============================================================================
// �I������
//=============================================================================
void UninitEffect(void)
{
	//�e�N�X�`���̊J��
	if (g_pTextureEffect != NULL)
	{
		g_pTextureEffect->Release();
		g_pTextureEffect = NULL;
	}

	// ���_�o�b�t�@�̊J��
	if (g_pVtxBuffEffect != NULL)
	{
		g_pVtxBuffEffect->Release();
		g_pVtxBuffEffect = NULL;
	}
}

//=============================================================================
// �X�V����
//=============================================================================
void UpdateEffect(void)
{
	VERTEX_3D *pVtx;										//���_���ւ̃|�C���^
	float fRadius;

	//���_�f�[�^�͈̔͂����b�N���A���_�o�b�t�@�ւ̃|�C���^���擾
	g_pVtxBuffEffect->Lock(0, 0, (void**)&pVtx, 0);

	for (int nCntEffect = 0; nCntEffect < MAX_EFFECT; nCntEffect++)
	{
		if (g_aEffect[nCntEffect].bUse)
		{
			
			fRadius = g_aEffect[nCntEffect].fRadius / g_aEffect[nCntEffect].nLife;
			g_aEffect[nCntEffect].nLife--;
			g_aEffect[nCntEffect].fRadius -= fRadius;
			g_aEffect[nCntEffect].col.a -= 0.05f;

			if (g_aEffect[nCntEffect].bAuthorization)
			{
				g_aEffect[nCntEffect].pos.y++;
			}

			if (g_aEffect[nCntEffect].nLife <= 0)
			{
				//�G�t�F�N�g����
				g_aEffect[nCntEffect].bUse = false;
				g_aEffect[nCntEffect].col.a = 5.0f;
			}

			//���_�J���[
			pVtx[0].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, g_aEffect[nCntEffect].col.a);
			pVtx[1].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, g_aEffect[nCntEffect].col.a);
			pVtx[2].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, g_aEffect[nCntEffect].col.a);
			pVtx[3].col = D3DXCOLOR(1.0f, 0.0f, 0.0f, g_aEffect[nCntEffect].col.a);
		}

		pVtx += 4;
	}

	// ���_�f�[�^���A�����b�N����
	g_pVtxBuffEffect->Unlock();

}

//=============================================================================
// �`�揈��
//=============================================================================
void DrawEffect(void)
{
	LPDIRECT3DDEVICE9 pDevice = GetDevice();	// �f�o�C�X�̎擾
	D3DXMATRIX	mtxRot, mtxTrans, mtxView;				//�v�Z�p�}�g���b�N�X
	EFFECT *pEffect;							//�e�̃|�C���^


	// �����_�[�X�e�[�g(���Z��������)
	//pDevice->SetRenderState(D3DRS_ZENABLE, D3DZB_USEW);
	//pDevice->SetRenderState(D3DRS_ZFUNC, D3DCMP_ALWAYS);
	pDevice->SetRenderState(D3DRS_ZWRITEENABLE, FALSE);

	pDevice->SetRenderState(D3DRS_BLENDOP, D3DBLENDOP_ADD);
	pDevice->SetRenderState(D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
	pDevice->SetRenderState(D3DRS_DESTBLEND, D3DBLEND_ONE);
	pEffect = &g_aEffect[0];

	for (int nCntEffect = 0; nCntEffect < MAX_EFFECT; nCntEffect++, pEffect++)
	{
		if (pEffect->bUse)
		{
			// ���[���h�}�g���b�N�X�̏�����
			D3DXMatrixIdentity(&g_aEffect[nCntEffect].mtxWorld);

			pDevice->GetTransform(D3DTS_VIEW, &mtxView);

			g_aEffect[nCntEffect].mtxWorld._11 = mtxView._11;
			g_aEffect[nCntEffect].mtxWorld._12 = mtxView._21;
			g_aEffect[nCntEffect].mtxWorld._13 = mtxView._31;
			g_aEffect[nCntEffect].mtxWorld._21 = mtxView._12;
			g_aEffect[nCntEffect].mtxWorld._22 = mtxView._22;
			g_aEffect[nCntEffect].mtxWorld._23 = mtxView._32;
			g_aEffect[nCntEffect].mtxWorld._31 = mtxView._13;
			g_aEffect[nCntEffect].mtxWorld._32 = mtxView._23;
			g_aEffect[nCntEffect].mtxWorld._33 = mtxView._33;

			// ��]�𔽉f
			D3DXMatrixRotationYawPitchRoll(&mtxRot, g_aEffect[nCntEffect].rot.y, g_aEffect[nCntEffect].rot.x, g_aEffect[nCntEffect].rot.z);
			D3DXMatrixMultiply(&g_aEffect[nCntEffect].mtxWorld, &g_aEffect[nCntEffect].mtxWorld, &mtxRot);

			// �ʒu�𔽉f
			D3DXMatrixTranslation(&mtxTrans, g_aEffect[nCntEffect].pos.x, g_aEffect[nCntEffect].pos.y, g_aEffect[nCntEffect].pos.z);
			D3DXMatrixMultiply(&g_aEffect[nCntEffect].mtxWorld, &g_aEffect[nCntEffect].mtxWorld, &mtxTrans);

			// ���[���h�}�g���b�N�X�̐ݒ�
			pDevice->SetTransform(D3DTS_WORLD, &g_aEffect[nCntEffect].mtxWorld);

			// ���_�o�b�t�@���f�[�^�X�g���[���ɐݒ�
			pDevice->SetStreamSource(0, g_pVtxBuffEffect, 0, sizeof(VERTEX_3D));

			// ���_�t�H�[�}�b�g�̐ݒ�
			pDevice->SetFVF(FVF_VERTEX_3D);

			//���_�t�H�[�}�b�g�̐ݒ�
			pDevice->SetTexture(0, g_pTextureEffect);

			// �|���S���̕`��
			pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, 4 * nCntEffect, 2);

			//���_�t�H�[�}�b�g�̐ݒ�
			pDevice->SetTexture(0, NULL);
		}
	}

	// �����_�[�X�e�[�g(�ʏ�u�����h����)
	pDevice->SetRenderState(D3DRS_ZENABLE, D3DZB_TRUE);
	pDevice->SetRenderState(D3DRS_ZFUNC, D3DCMP_LESSEQUAL);
	pDevice->SetRenderState(D3DRS_ZWRITEENABLE, TRUE);

	pDevice->SetRenderState(D3DRS_BLENDOP, D3DBLENDOP_ADD);
	pDevice->SetRenderState(D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
	pDevice->SetRenderState(D3DRS_DESTBLEND, D3DBLEND_INVSRCALPHA);
}

//=============================================================================
// �e�̍쐬
//=============================================================================
void SetEffect(D3DXVECTOR3 pos, D3DXCOLOR col, D3DXVECTOR3 rot, bool bUse)
{
	for (int nCntEffect = 0; nCntEffect < MAX_EFFECT; nCntEffect++)
	{
		if (!g_aEffect[nCntEffect].bUse)
		{
			g_aEffect[nCntEffect].pos = pos;
			g_aEffect[nCntEffect].rot = rot;
			g_aEffect[nCntEffect].col = col;
			g_aEffect[nCntEffect].fRadius = 15;
			g_aEffect[nCntEffect].nLife = 20;
			g_aEffect[nCntEffect].bUse = true;
			g_aEffect[nCntEffect].bAuthorization = bUse;
			break;
		}
	}
}