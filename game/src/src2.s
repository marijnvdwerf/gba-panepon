#include "asm/macros.inc"
#include "AgbSyscallDefine.s"

	.include "functions/np_PutObjMascot_Ctc.s"
	.include "functions/KeyRead_Main.s"
	.include "functions/KeyRead_SetPara.s"
	.include "functions/NisRnd_Read.s"
	.include "functions/RndRnd.s"
	.include "functions/PutBgDex.s"
	.include "functions/PutBgBigDex.s"
	.include "functions/NisSound_CursorDecide.s"
	.include "functions/NisSound_CursorMove.s"
	.include "functions/Nis_m4aSongNumStart.s"
	.include "functions/Nis_vw_m4aSongNumStart.s"
	.include "functions/Nis_Stop.s"
	.include "functions/MainSeqInit.s"
	.include "functions/MainSeqSearchNear.s"
	.include "functions/VBlankIntr.s"
	.include "functions/GBAJoyIntr.s"
	.include "functions/IntrDummy.s"
	.include "functions/agb_start.s"
#if VERSION < 2
	.include "functions/np_ojt_inc.s"
	.include "functions/np_ojt_dec.s"
	.include "functions/mac_nbck_idxChk.s"
	.include "functions/mac_nbck_idxinc.s"
	.include "functions/mac_nbck_idxdec.s"
	.include "functions/n_zinc.s"
	.include "functions/n_incz.s"
	.include "functions/n_decz.s"
	.include "functions/n_incm.s"
	.include "functions/n_decm.s"
	.include "functions/n_incr.s"
	.include "functions/n_decr.s"
	.include "functions/n_chkr.s"
	.include "functions/n_inctime.s"
	.include "functions/n_dectime.s"
#endif
	.include "functions/np_rakka_subs.s"
#if VERSION == 2
    .include "functions/sub_200C03C.s"
    .include "functions/sub_200C14C.s"
#endif
#if 0
	.include "functions/NisCtcPara_RXY_.s"
	.include "functions/NisCtcPara_Para.s"
	.include "functions/NisCtcPara_Init.s"
#endif
	.include "functions/Obj1AllClear.s"
	.include "functions/Obj1Clear.s"
	.include "functions/Obj1SetBuff.s"
	.include "functions/NisCtc_Obj1Put.s"
#if 0
	.include "functions/NisCtcList_SearchLink.s"
#endif
	.include "functions/NisCtcList_Sub_PutCtc.s"
	.include "functions/NisCtc_PutCtc.s"
	.include "functions/NisCtcList_Sub_PutCtc_R.s"
	.include "functions/NisCtc_PutCtc_R.s"
#if 0
	.include "functions/NisCtcList_PutCtc.s"
#endif
	.include "functions/NisCtcList_QuickSort.s"
	.include "functions/NisCtcList_SortPut.s"
	.include "functions/NisCtc_Sub_CadPut.s"
#if 0
	.include "functions/NisCtc_CadPut.s"
	.include "functions/NisCtcList_CadPut.s"
#endif
	.include "functions/NisCtc_Sub_EffPut.s"
	.include "functions/NisCtc_EffPut.s"
#if 0
	.include "functions/NisCtcList_EffPut.s"
#endif
	.include "functions/NisCtcList_Sub_ObjHaBa.s"
	.include "functions/JoyReboot.s"
