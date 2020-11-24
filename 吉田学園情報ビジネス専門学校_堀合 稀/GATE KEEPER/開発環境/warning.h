//==============================================================================
//
// xζΚΜ`ζkwarning.hl
// AUTHOR : MARE HORIAI
//
//==============================================================================
#pragma once
#ifndef _WARNING_H_
#define _WARNING_H_
#include "main.h"

//==============================================================================
// x[h
//==============================================================================
typedef enum
{
	PHASESTATE_NORMAL = 0,	// ΚνσΤ
	PHASESTATE_WARNING,		// xσΤ
	PHASESTATE_MAX
} PHASESTATE;

//==============================================================================
// vg^CvιΎ
//==============================================================================
HRESULT InitWarning(void);		// xζΚΜϊ»
void UninitWarning(void);		// xζΚΜIΉ
void UpdateWarning(void);		// xζΚΜXV
void DrawWarning(void);			// xζΚΜ`ζ
PHASESTATE GetPhase(void);		// xζΚΜξρ

#endif
