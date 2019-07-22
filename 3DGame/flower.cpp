//========================================================================================
//
// ����[flower.cpp]
//
// Author : masayasu wakita
// 07/13
//
//========================================================================================
#include "flower.h"
#include "player.h"

//========================================================================================
// �}�N����`
//========================================================================================
#define TEXTURE_FLOWER		"data/tex/leaf.png"
#define TEXTURE_CONTOUR		"data/tex/Crystal contour.png"
#define TEXTURE_CORE		"data/tex/Crystal.png"
#define TEXTURE_WAVE		"data/tex/wave.png"

//========================================================================================
// �O���[�o���ϐ�
//========================================================================================
LPDIRECT3DTEXTURE9 g_apTextureFlower[TEXTURETYPE_MAX] = {};						//�e�N�X�`���ւ̃|�C���^
LPDIRECT3DVERTEXBUFFER9 g_pVtxBuffFlower = NULL;				//���_�o�b�t�@�ւ̃|�C���^

FLOWER	g_aFlower[TEXTURETYPE_MAX];

float g_nCntPage = 0;
int g_nAnim = 0;

//========================================================================================
// �|���S���̏�����
//========================================================================================
void InitFlower(void)
{
	LPDIRECT3DDEVICE9 pDevice;
	pDevice = GetDevice();

	//�e�N�X�`���̓ǂݍ���
	D3DXCreateTextureFromFile(pDevice, TEXTURE_FLOWER, &g_apTextureFlower[TEXTURETYPE_FLOWER]);

	//�e�N�X�`���̓ǂݍ���
	D3DXCreateTextureFromFile(pDevice, TEXTURE_CONTOUR, &g_apTextureFlower[TEXTURETYPE_CONTOUR]);

	//�e�N�X�`���̓ǂݍ���
	D3DXCreateTextureFromFile(pDevice, TEXTURE_CORE, &g_apTextureFlower[TEXTURETYPE_CORE]);

	//�e�N�X�`���̓ǂݍ���
	D3DXCreateTextureFromFile(pDevice, TEXTURE_WAVE, &g_apTextureFlower[TEXTURETYPE_WAVE]);

	//���_�o�b�t�@�̐���
	pDevice->CreateVertexBuffer(sizeof(VERTEX_2D) * 4 * TEXTURETYPE_MAX, D3DUSAGE_WRITEONLY, FVF_VERTEX_2D, D3DPOOL_MANAGED, &g_pVtxBuffFlower, NULL);

	//��
	MakeVertexFlower(TEXTURETYPE_FLOWER ,D3DXVECTOR3(1080, 100, 0.0f), D3DXVECTOR3(400, 200, 0.0f));

	//�؂̗֊s
	MakeVertexFlower(TEXTURETYPE_CONTOUR, D3DXVECTOR3(1200, 50, 0.0f), D3DXVECTOR3(150, 150, 0.0f));

	//��
	MakeVertexFlower(TEXTURETYPE_CORE, D3DXVECTOR3(1200, 50, 0.0f), D3DXVECTOR3(150, 150, 0.0f));

}

//========================================================================================
// �|���S���̊J������
//========================================================================================
void UninitFlower(void)
{
	for (int nCntTex = 0; nCntTex < TEXTURETYPE_MAX; nCntTex++)
	{
		//�e�N�X�`���̊J��
		if (g_apTextureFlower[nCntTex] != NULL)
		{
			g_apTextureFlower[nCntTex]->Release();
			g_apTextureFlower[nCntTex] = NULL;
		}
	}

	//���_�o�b�t�@�̊J��
	if (g_pVtxBuffFlower != NULL)
	{
		g_pVtxBuffFlower->Release();
		g_pVtxBuffFlower = NULL;
	}
}

//========================================================================================
// �|���S���̍X�V����
//========================================================================================
void UpdateFlower(void)
{
	if (GetMode() == MODE_GAME)
	{
		g_nAnim += 1;
		//��
		MakeVertexFlower(TEXTURETYPE_CORE, D3DXVECTOR3(1200, 50, 0.0f), D3DXVECTOR3(150, 150, 0.0f));
	}
}

//========================================================================================
// �|���S���̕`�揈��
//========================================================================================
void DrawFlower(void)
{
	LPDIRECT3DDEVICE9 pDevice;

	for (int nCntFlower = 0; nCntFlower < TEXTURETYPE_MAX; nCntFlower++)
	{
		//�f�o�C�X���擾����
		pDevice = GetDevice();

		//���_�o�b�t�@���f�o�C�X�̃f�[�^�Ƀo�C���h
		pDevice->SetStreamSource(0, g_pVtxBuffFlower, 0, sizeof(VERTEX_2D));

		//�e�N�X�`���̐ݒ�
		pDevice->SetFVF(FVF_VERTEX_2D);

		//���_�t�H�[�}�b�g�̐ݒ�
		pDevice->SetTexture(0, g_apTextureFlower[nCntFlower]);

		//�|���S���̕`��
		pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, nCntFlower * 4, 2);
	}
}

//=============================================================================
// ���_�̍쐬
//=============================================================================
void MakeVertexFlower(int nIndex, D3DXVECTOR3 pos, D3DXVECTOR3 size)
{
	VERTEX_2D *pVtx;
	PLAYER *pPlayer = GetPlayer();

	//���_�f�[�^�͈̔͂����b�N���A���_�o�b�t�@�ւ̃|�C���^���擾
	g_pVtxBuffFlower->Lock(0, 0, (void**)&pVtx, 0);

	pVtx += 4 * nIndex;

	g_aFlower[nIndex].size = size;						//�T�C�Y�̒l���i�[
	g_aFlower[nIndex].pos = pos;						//�ʒu�̒l���i�[

	g_aFlower[nIndex].fAngle = atan2f(g_aFlower[nIndex].size.x, g_aFlower[nIndex].size.y);
	g_aFlower[nIndex].fLength = (float)sqrt(g_aFlower[nIndex].size.x * g_aFlower[nIndex].size.x + g_aFlower[nIndex].size.y * g_aFlower[nIndex].size.y) / 2;

	//���W�̈ʒu
	pVtx[0].pos.x = g_aFlower[nIndex].pos.x + sinf(-D3DX_PI + g_aFlower[nIndex].fAngle + g_aFlower[nIndex].rot.z) * g_aFlower[nIndex].fLength;
	pVtx[0].pos.y = g_aFlower[nIndex].pos.y + cosf(-D3DX_PI + g_aFlower[nIndex].fAngle + g_aFlower[nIndex].rot.z) * g_aFlower[nIndex].fLength;
	pVtx[0].pos.z = 0.0f;

	pVtx[1].pos.x = g_aFlower[nIndex].pos.x + sinf(D3DX_PI - g_aFlower[nIndex].fAngle + g_aFlower[nIndex].rot.z) * g_aFlower[nIndex].fLength;
	pVtx[1].pos.y = g_aFlower[nIndex].pos.y + cosf(D3DX_PI - g_aFlower[nIndex].fAngle + g_aFlower[nIndex].rot.z) * g_aFlower[nIndex].fLength;
	pVtx[1].pos.z = 0.0f;

	pVtx[2].pos.x = g_aFlower[nIndex].pos.x + sinf(-g_aFlower[nIndex].fAngle + g_aFlower[nIndex].rot.z) * g_aFlower[nIndex].fLength;
	pVtx[2].pos.y = g_aFlower[nIndex].pos.y + cosf(-g_aFlower[nIndex].fAngle + g_aFlower[nIndex].rot.z) * g_aFlower[nIndex].fLength;
	pVtx[2].pos.z = 0.0f;

	pVtx[3].pos.x = g_aFlower[nIndex].pos.x + sinf(g_aFlower[nIndex].fAngle + g_aFlower[nIndex].rot.z) * g_aFlower[nIndex].fLength;
	pVtx[3].pos.y = g_aFlower[nIndex].pos.y + cosf(g_aFlower[nIndex].fAngle + g_aFlower[nIndex].rot.z) * g_aFlower[nIndex].fLength;
	pVtx[3].pos.z = 0.0f;

	//1.0�ŌŒ�
	pVtx[0].rhw = 1.0f;
	pVtx[1].rhw = 1.0f;
	pVtx[2].rhw = 1.0f;
	pVtx[3].rhw = 1.0f;

	if (nIndex == TEXTURETYPE_CORE)
	{
		//�J���[�`���[�g�̐ݒ�
		pVtx[0].col = D3DCOLOR_RGBA(255, 0, 216, 255);
		pVtx[1].col = D3DCOLOR_RGBA(255, 0, 216, 255);
		pVtx[2].col = D3DCOLOR_RGBA(255, 0, 216, 255);
		pVtx[3].col = D3DCOLOR_RGBA(255, 0, 216, 255);
	}
	else if (nIndex == TEXTURETYPE_FLOWER || nIndex == TEXTURETYPE_CONTOUR)
	{
		//�J���[�`���[�g�̐ݒ�
		pVtx[0].col = D3DCOLOR_RGBA(255, 0, 216, 255);
		pVtx[1].col = D3DCOLOR_RGBA(255, 0, 216, 255);
		pVtx[2].col = D3DCOLOR_RGBA(255, 0, 216, 255);
		pVtx[3].col = D3DCOLOR_RGBA(255, 0, 216, 255);
	}
	else
	{
		//�J���[�`���[�g�̐ݒ�
		pVtx[0].col = D3DCOLOR_RGBA(255, 255, 255, 255);
		pVtx[1].col = D3DCOLOR_RGBA(255, 255, 255, 255);
		pVtx[2].col = D3DCOLOR_RGBA(255, 255, 255, 255);
		pVtx[3].col = D3DCOLOR_RGBA(255, 255, 255, 255);

	}

	if (nIndex == TEXTURETYPE_WAVE)
	{
		if (g_nAnim % 5 == 0)
		{
			g_nCntPage += 1;
			//�e�N�X�`���`�ʂ̈ʒu
			pVtx[0].tex = D3DXVECTOR2(0.0f + 0.25f * g_nCntPage, 0.0f);
			pVtx[1].tex = D3DXVECTOR2(0.25f + 0.25f * g_nCntPage, 0.0f);
			pVtx[2].tex = D3DXVECTOR2(0.0f + 0.25f * g_nCntPage, 1.0f);
			pVtx[3].tex = D3DXVECTOR2(0.25f + 0.25f * g_nCntPage, 1.0f);
		}
	}
	else
	{
			//�e�N�X�`�����W�̐ݒ�
			pVtx[0].tex = D3DXVECTOR2(0.0f, 0.0f);
			pVtx[1].tex = D3DXVECTOR2(1.0f, 0.0f);
			pVtx[2].tex = D3DXVECTOR2(0.0f, 1.0f);
			pVtx[3].tex = D3DXVECTOR2(1.0f, 1.0f);
	}

	//���_�f�[�^�̃A�����b�N
	g_pVtxBuffFlower->Unlock();
}