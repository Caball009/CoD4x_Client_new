;Imports of quickstep:
	extern cosf
	extern dQMultiply0
	extern dNormalize4
	extern dRfromQ
	extern dDQfromW
	extern sinf
	extern _Z13jointGetInfo1PK7dxJointPNS_5Info1E
	extern dSetZero
	extern dSetValue
	extern memset
	extern _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E

;Exports of quickstep:
	global _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif


SECTION .text

;dxQuickStepper(dxWorld*, dxBody* const*, int, dxJoint* const*, int, float)
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x21fc
	mov edx, [ebp+0x8]
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, dword [ebp+0x1c]
	movss [ebp-0x2190], xmm0
	lea eax, [edx+0x10]
	mov [ebp-0x218c], eax
	lea eax, [edx+0x30]
	mov [g_holdrand], eax
	lea ecx, [edx+0x750]
	mov [ebp-0x2198], ecx
	add edx, 0x54
	mov [ebp-0x2194], edx
	mov eax, [ebp+0x10]
	test eax, eax
	jle _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_10
	xor edi, edi
	lea ecx, [ebp-0x940]
	lea ebx, [ebp-0xbe0]
	mov esi, [ebp+0xc]
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_20:
	mov eax, [esi]
	lea edx, [eax+0x34]
	movss xmm3, dword [eax+0x34]
	movss xmm1, dword [edx+0x4]
	movss xmm0, dword [eax+0x104]
	movss [ebp-0x2184], xmm0
	movss xmm2, dword [edx+0x8]
	movss xmm0, dword [eax+0x108]
	movss [ebp-0x2180], xmm0
	movss xmm7, dword [eax+0x100]
	mulss xmm7, xmm3
	movss xmm0, dword [ebp-0x2184]
	mulss xmm0, xmm1
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x2180]
	mulss xmm0, xmm2
	addss xmm7, xmm0
	movss xmm0, dword [eax+0x114]
	movss [ebp-0x217c], xmm0
	movss xmm0, dword [eax+0x118]
	movss [ebp-0x2178], xmm0
	movss xmm5, dword [eax+0x110]
	mulss xmm5, xmm3
	movss xmm0, dword [ebp-0x217c]
	mulss xmm0, xmm1
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x2178]
	mulss xmm0, xmm2
	addss xmm5, xmm0
	movss xmm6, dword [eax+0x120]
	movss xmm0, dword [eax+0x124]
	movss [ebp-0x2174], xmm0
	movss xmm0, dword [eax+0x128]
	movss [ebp-0x2170], xmm0
	mulss xmm3, xmm6
	mulss xmm1, [ebp-0x2174]
	addss xmm3, xmm1
	mulss xmm2, xmm0
	addss xmm3, xmm2
	movss xmm4, dword [edx+0x10]
	movss xmm1, dword [edx+0x14]
	movss xmm2, dword [edx+0x18]
	movss xmm0, dword [eax+0x100]
	mulss xmm0, xmm4
	movss [ebp-0x20f8], xmm0
	movss xmm0, dword [ebp-0x2184]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x20f8]
	movss [ebp-0x20f8], xmm0
	movss xmm0, dword [ebp-0x2180]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x20f8]
	movss [ebp-0x20f8], xmm0
	movss xmm0, dword [eax+0x110]
	mulss xmm0, xmm4
	movss [ebp-0x20fc], xmm0
	movss xmm0, dword [ebp-0x217c]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x20fc]
	movss [ebp-0x20fc], xmm0
	movss xmm0, dword [ebp-0x2178]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x20fc]
	movss [ebp-0x20fc], xmm0
	mulss xmm4, xmm6
	mulss xmm1, [ebp-0x2174]
	addss xmm1, xmm4
	mulss xmm2, [ebp-0x2170]
	addss xmm2, xmm1
	movss [ebp-0x2100], xmm2
	movss xmm1, dword [edx+0x20]
	movss xmm2, dword [edx+0x24]
	movss xmm4, dword [edx+0x28]
	movss xmm0, dword [eax+0x100]
	mulss xmm0, xmm1
	movss [ebp-0x2104], xmm0
	movss xmm0, dword [ebp-0x2184]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x2104]
	movss [ebp-0x2104], xmm0
	movss xmm0, dword [ebp-0x2180]
	mulss xmm0, xmm4
	addss xmm0, [ebp-0x2104]
	movss [ebp-0x2104], xmm0
	movss xmm0, dword [eax+0x110]
	mulss xmm0, xmm1
	movss [ebp-0x2108], xmm0
	movss xmm0, dword [ebp-0x217c]
	mulss xmm0, xmm2
	movss [ebp-0x217c], xmm0
	movss xmm0, dword [ebp-0x2108]
	addss xmm0, [ebp-0x217c]
	movss [ebp-0x2108], xmm0
	movss xmm0, dword [ebp-0x2178]
	mulss xmm0, xmm4
	movss [ebp-0x2178], xmm0
	movss xmm0, dword [ebp-0x2108]
	addss xmm0, [ebp-0x2178]
	movss [ebp-0x2108], xmm0
	mulss xmm6, xmm1
	mulss xmm2, [ebp-0x2174]
	addss xmm6, xmm2
	mulss xmm4, [ebp-0x2170]
	movss [ebp-0x2170], xmm4
	addss xmm6, xmm4
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x100]
	movss xmm1, dword [ebp-0x2184]
	mulss xmm1, [ebp-0x20f8]
	addss xmm0, xmm1
	movss xmm2, dword [ebp-0x2180]
	mulss xmm2, [ebp-0x2104]
	addss xmm0, xmm2
	movss [ecx], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x100]
	movss xmm1, dword [ebp-0x20fc]
	mulss xmm1, [eax+0x104]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x2108]
	mulss xmm1, [eax+0x108]
	addss xmm0, xmm1
	movss [ecx+0x4], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x100]
	movss xmm1, dword [ebp-0x2100]
	mulss xmm1, [eax+0x104]
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x108]
	addss xmm0, xmm1
	movss [ecx+0x8], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x110]
	movss xmm1, dword [ebp-0x20f8]
	mulss xmm1, [eax+0x114]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x2104]
	mulss xmm1, [eax+0x118]
	addss xmm0, xmm1
	movss [ecx+0x10], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x110]
	movss xmm1, dword [ebp-0x20fc]
	mulss xmm1, [eax+0x114]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x2108]
	mulss xmm1, [eax+0x118]
	addss xmm0, xmm1
	movss [ecx+0x14], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x110]
	movss xmm1, dword [ebp-0x2100]
	mulss xmm1, [eax+0x114]
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x118]
	addss xmm0, xmm1
	movss [ecx+0x18], xmm0
	mulss xmm7, [eax+0x120]
	movss xmm0, dword [ebp-0x20f8]
	mulss xmm0, [eax+0x124]
	addss xmm7, xmm0
	movss xmm1, dword [ebp-0x2104]
	mulss xmm1, [eax+0x128]
	addss xmm7, xmm1
	movss [ecx+0x20], xmm7
	mulss xmm5, [eax+0x120]
	movss xmm2, dword [ebp-0x20fc]
	mulss xmm2, [eax+0x124]
	addss xmm5, xmm2
	movss xmm0, dword [ebp-0x2108]
	mulss xmm0, [eax+0x128]
	addss xmm5, xmm0
	movss [ecx+0x24], xmm5
	mulss xmm3, [eax+0x120]
	movss xmm1, dword [ebp-0x2100]
	mulss xmm1, [eax+0x124]
	addss xmm3, xmm1
	mulss xmm6, [eax+0x128]
	addss xmm3, xmm6
	movss [ecx+0x28], xmm3
	lea edx, [eax+0x64]
	movss xmm3, dword [eax+0x64]
	movss xmm1, dword [edx+0x4]
	movss xmm2, dword [eax+0x104]
	movss [ebp-0x216c], xmm2
	movss xmm2, dword [edx+0x8]
	movss xmm0, dword [eax+0x108]
	movss [ebp-0x2168], xmm0
	movss xmm7, dword [eax+0x100]
	mulss xmm7, xmm3
	movss xmm0, dword [ebp-0x216c]
	mulss xmm0, xmm1
	addss xmm7, xmm0
	movss xmm0, dword [ebp-0x2168]
	mulss xmm0, xmm2
	addss xmm7, xmm0
	movss xmm0, dword [eax+0x114]
	movss [ebp-0x2164], xmm0
	movss xmm0, dword [eax+0x118]
	movss [ebp-0x2160], xmm0
	movss xmm5, dword [eax+0x110]
	mulss xmm5, xmm3
	movss xmm0, dword [ebp-0x2164]
	mulss xmm0, xmm1
	addss xmm5, xmm0
	movss xmm0, dword [ebp-0x2160]
	mulss xmm0, xmm2
	addss xmm5, xmm0
	movss xmm6, dword [eax+0x120]
	movss xmm0, dword [eax+0x124]
	movss [ebp-0x215c], xmm0
	movss xmm0, dword [eax+0x128]
	movss [ebp-0x2158], xmm0
	mulss xmm3, xmm6
	mulss xmm1, [ebp-0x215c]
	addss xmm3, xmm1
	mulss xmm2, xmm0
	addss xmm3, xmm2
	movss xmm4, dword [edx+0x10]
	movss xmm1, dword [edx+0x14]
	movss xmm2, dword [edx+0x18]
	movss xmm0, dword [eax+0x100]
	mulss xmm0, xmm4
	movss [ebp-0x20cc], xmm0
	movss xmm0, dword [ebp-0x216c]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x20cc]
	movss [ebp-0x20cc], xmm0
	movss xmm0, dword [ebp-0x2168]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x20cc]
	movss [ebp-0x20cc], xmm0
	movss xmm0, dword [eax+0x110]
	mulss xmm0, xmm4
	movss [ebp-0x20d0], xmm0
	movss xmm0, dword [ebp-0x2164]
	mulss xmm0, xmm1
	addss xmm0, [ebp-0x20d0]
	movss [ebp-0x20d0], xmm0
	movss xmm0, dword [ebp-0x2160]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x20d0]
	movss [ebp-0x20d0], xmm0
	mulss xmm4, xmm6
	mulss xmm1, [ebp-0x215c]
	addss xmm1, xmm4
	mulss xmm2, [ebp-0x2158]
	addss xmm2, xmm1
	movss [ebp-0x20d4], xmm2
	movss xmm1, dword [edx+0x20]
	movss xmm2, dword [edx+0x24]
	movss xmm4, dword [edx+0x28]
	movss xmm0, dword [eax+0x100]
	mulss xmm0, xmm1
	movss [ebp-0x20d8], xmm0
	movss xmm0, dword [ebp-0x216c]
	mulss xmm0, xmm2
	addss xmm0, [ebp-0x20d8]
	movss [ebp-0x20d8], xmm0
	movss xmm0, dword [ebp-0x2168]
	mulss xmm0, xmm4
	addss xmm0, [ebp-0x20d8]
	movss [ebp-0x20d8], xmm0
	movss xmm0, dword [eax+0x110]
	mulss xmm0, xmm1
	movss [ebp-0x20dc], xmm0
	movss xmm0, dword [ebp-0x2164]
	mulss xmm0, xmm2
	movss [ebp-0x2164], xmm0
	movss xmm0, dword [ebp-0x20dc]
	addss xmm0, [ebp-0x2164]
	movss [ebp-0x20dc], xmm0
	movss xmm0, dword [ebp-0x2160]
	mulss xmm0, xmm4
	movss [ebp-0x2160], xmm0
	movss xmm0, dword [ebp-0x20dc]
	addss xmm0, [ebp-0x2160]
	movss [ebp-0x20dc], xmm0
	mulss xmm6, xmm1
	mulss xmm2, [ebp-0x215c]
	addss xmm6, xmm2
	mulss xmm4, [ebp-0x2158]
	movss [ebp-0x2158], xmm4
	addss xmm6, xmm4
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x100]
	movss xmm1, dword [ebp-0x216c]
	mulss xmm1, [ebp-0x20cc]
	addss xmm0, xmm1
	movss xmm2, dword [ebp-0x2168]
	mulss xmm2, [ebp-0x20d8]
	addss xmm0, xmm2
	movss [ebx], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x100]
	movss xmm1, dword [ebp-0x20d0]
	mulss xmm1, [eax+0x104]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x20dc]
	mulss xmm1, [eax+0x108]
	addss xmm0, xmm1
	movss [ebx+0x4], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x100]
	movss xmm1, dword [ebp-0x20d4]
	mulss xmm1, [eax+0x104]
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x108]
	addss xmm0, xmm1
	movss [ebx+0x8], xmm0
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x110]
	movss xmm1, dword [ebp-0x20cc]
	mulss xmm1, [eax+0x114]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x20d8]
	mulss xmm1, [eax+0x118]
	addss xmm0, xmm1
	movss [ebx+0x10], xmm0
	movaps xmm0, xmm5
	mulss xmm0, [eax+0x110]
	movss xmm1, dword [ebp-0x20d0]
	mulss xmm1, [eax+0x114]
	addss xmm0, xmm1
	movss xmm1, dword [ebp-0x20dc]
	mulss xmm1, [eax+0x118]
	addss xmm0, xmm1
	movss [ebx+0x14], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x110]
	movss xmm1, dword [ebp-0x20d4]
	mulss xmm1, [eax+0x114]
	addss xmm0, xmm1
	movaps xmm1, xmm6
	mulss xmm1, [eax+0x118]
	addss xmm0, xmm1
	movss [ebx+0x18], xmm0
	mulss xmm7, [eax+0x120]
	movss xmm0, dword [ebp-0x20cc]
	mulss xmm0, [eax+0x124]
	addss xmm7, xmm0
	movss xmm1, dword [ebp-0x20d8]
	mulss xmm1, [eax+0x128]
	addss xmm7, xmm1
	movss [ebx+0x20], xmm7
	mulss xmm5, [eax+0x120]
	movss xmm2, dword [ebp-0x20d0]
	mulss xmm2, [eax+0x124]
	addss xmm5, xmm2
	movss xmm0, dword [ebp-0x20dc]
	mulss xmm0, [eax+0x128]
	addss xmm5, xmm0
	movss [ebx+0x24], xmm5
	mulss xmm3, [eax+0x120]
	movss xmm1, dword [ebp-0x20d4]
	mulss xmm1, [eax+0x124]
	addss xmm3, xmm1
	mulss xmm6, [eax+0x128]
	addss xmm3, xmm6
	movss [ebx+0x28], xmm3
	lea edx, [eax+0x140]
	movss xmm2, dword [eax+0x140]
	movss xmm1, dword [edx+0x4]
	movss xmm5, dword [edx+0x8]
	movaps xmm4, xmm2
	mulss xmm4, [ecx]
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x4]
	addss xmm4, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ecx+0x8]
	addss xmm4, xmm0
	movaps xmm3, xmm2
	mulss xmm3, [ecx+0x10]
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x14]
	addss xmm3, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [ecx+0x18]
	addss xmm3, xmm0
	mulss xmm2, [ecx+0x20]
	mulss xmm1, [ecx+0x24]
	addss xmm2, xmm1
	mulss xmm5, [ecx+0x28]
	addss xmm2, xmm5
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x144]
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x148]
	subss xmm1, xmm0
	movss xmm0, dword [eax+0xa8]
	subss xmm0, xmm1
	movss [eax+0xa8], xmm0
	mov eax, [esi]
	movaps xmm1, xmm4
	mulss xmm1, [eax+0x148]
	mulss xmm2, [eax+0x140]
	subss xmm1, xmm2
	movss xmm0, dword [eax+0xac]
	subss xmm0, xmm1
	movss [eax+0xac], xmm0
	mov eax, [esi]
	mulss xmm3, [eax+0x140]
	mulss xmm4, [eax+0x144]
	subss xmm3, xmm4
	movss xmm0, dword [eax+0xb0]
	subss xmm0, xmm3
	movss [eax+0xb0], xmm0
	add edi, 0x1
	add esi, 0x4
	add ecx, 0x30
	add ebx, 0x30
	cmp [ebp+0x10], edi
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_20
	xor ecx, ecx
	mov edx, [ebp+0xc]
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_40:
	mov eax, [edx]
	test byte [eax+0x18], 0x8
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_30
	movss xmm0, dword [eax+0x20]
	mov ebx, [ebp-0x218c]
	mulss xmm0, [ebx]
	addss xmm0, [eax+0x98]
	movss [eax+0x98], xmm0
	mov eax, [edx]
	movss xmm0, dword [eax+0x20]
	mulss xmm0, [ebx+0x4]
	addss xmm0, [eax+0x9c]
	movss [eax+0x9c], xmm0
	mov eax, [edx]
	movss xmm0, dword [eax+0x20]
	mulss xmm0, [ebx+0x8]
	addss xmm0, [eax+0xa0]
	movss [eax+0xa0], xmm0
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_30:
	add ecx, 0x1
	add edx, 0x4
	cmp [ebp+0x10], ecx
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_40
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_10:
	mov eax, [ebp+0x18]
	test eax, eax
	jg _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_50
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_320:
	mov edx, [ebp+0x10]
	test edx, edx
	jle _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_60
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_650:
	xor esi, esi
	lea edx, [ebp-0xbe0]
	mov ebx, [ebp+0xc]
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_100:
	mov eax, [ebx]
	movss xmm1, dword [ebp+0x1c]
	mulss xmm1, [eax+0x94]
	xor ecx, ecx
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_80:
	movaps xmm0, xmm1
	mulss xmm0, [eax+ecx*4+0x98]
	addss xmm0, [eax+ecx*4+0x130]
	movss [eax+ecx*4+0x130], xmm0
	add ecx, 0x1
	cmp ecx, 0x3
	jz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_70
	mov eax, [ebx]
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_80
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_70:
	and ecx, 0xffffff00
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_90:
	mov eax, [ebx]
	movss xmm0, dword [ebp+0x1c]
	mulss xmm0, [eax+ecx*4+0xa8]
	movss [eax+ecx*4+0xa8], xmm0
	add ecx, 0x1
	cmp ecx, 0x3
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_90
	mov eax, [ebx]
	movss xmm1, dword [edx]
	mulss xmm1, [eax+0xa8]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0xac]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0xb0]
	addss xmm1, xmm0
	addss xmm1, [eax+0x140]
	movss [eax+0x140], xmm1
	movss xmm1, dword [edx+0x10]
	mulss xmm1, [eax+0xa8]
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [eax+0xac]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x18]
	mulss xmm0, [eax+0xb0]
	addss xmm1, xmm0
	addss xmm1, [eax+0x144]
	movss [eax+0x144], xmm1
	movss xmm1, dword [edx+0x20]
	mulss xmm1, [eax+0xa8]
	movss xmm0, dword [edx+0x24]
	mulss xmm0, [eax+0xac]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x28]
	mulss xmm0, [eax+0xb0]
	addss xmm1, xmm0
	addss xmm1, [eax+0x148]
	movss [eax+0x148], xmm1
	add esi, 0x1
	add ebx, 0x4
	add edx, 0x30
	cmp [ebp+0x10], esi
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_100
	xor ebx, ebx
	movss xmm5, dword [_float_39_00000000]
	movss xmm6, dword [_float_999900_00000000]
	movss xmm4, dword [_float_1600_00000000]
	movss xmm3, dword [_float_999999995904_00000000]
	mov edx, [ebp+0xc]
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_110
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_140:
	lea ecx, [eax+0x130]
	movss xmm2, dword [eax+0x130]
	movss xmm0, dword [eax+0x134]
	movss xmm1, dword [eax+0x138]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	ucomiss xmm2, xmm3
	ja _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_120
	add ebx, 0x1
	add edx, 0x4
	cmp [ebp+0x10], ebx
	jz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_130
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_110:
	mov eax, [edx]
	lea ecx, [eax+0x140]
	movss xmm2, dword [eax+0x140]
	movss xmm0, dword [eax+0x144]
	movss xmm1, dword [eax+0x148]
	mulss xmm2, xmm2
	mulss xmm0, xmm0
	addss xmm2, xmm0
	mulss xmm1, xmm1
	addss xmm2, xmm1
	ucomiss xmm2, xmm4
	jbe _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_140
	sqrtss xmm0, xmm2
	movaps xmm1, xmm5
	divss xmm1, xmm0
	movaps xmm0, xmm1
	mulss xmm1, [eax+0x140]
	movss [eax+0x140], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x144]
	movss [ecx+0x4], xmm1
	mulss xmm0, [eax+0x148]
	movss [ecx+0x8], xmm0
	mov eax, [edx]
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_140
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_120:
	sqrtss xmm0, xmm2
	movaps xmm2, xmm6
	divss xmm2, xmm0
	movaps xmm0, xmm2
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x130]
	movss [eax+0x130], xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x134]
	movss [ecx+0x4], xmm1
	mulss xmm0, [eax+0x138]
	movss [ecx+0x8], xmm0
	add ebx, 0x1
	add edx, 0x4
	cmp [ebp+0x10], ebx
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_110
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_130:
	movss xmm0, dword [ebp+0x1c]
	mulss xmm0, [_float_0_50000000]
	movss [ebp-0x2110], xmm0
	mov dword [ebp-0x20bc], 0x0
	mov edi, [ebp+0xc]
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_210:
	mov ebx, [edi]
	mov eax, ebx
	xor edx, edx
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_150:
	movss xmm0, dword [ebp+0x1c]
	mulss xmm0, [eax+0x130]
	addss xmm0, [eax+0xe0]
	movss [eax+0xe0], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x3
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_150
	mov eax, [ebx+0x18]
	test al, 0x1
	jz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_160
	test al, 0x2
	jz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_170
	lea eax, [ebx+0xb8]
	lea edx, [ebx+0x140]
	movss xmm1, dword [ebx+0xb8]
	mulss xmm1, [ebx+0x140]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	movaps xmm2, xmm1
	mulss xmm2, [ebx+0xb8]
	movss [ebp-0x20ec], xmm2
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0xbc]
	movss [ebp-0x20f0], xmm0
	movaps xmm2, xmm1
	mulss xmm2, [ebx+0xc0]
	movss [ebp-0x20f4], xmm2
	movss xmm0, dword [ebx+0x140]
	subss xmm0, [ebp-0x20ec]
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebx+0x144]
	subss xmm0, [ebp-0x20f0]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebx+0x148]
	subss xmm0, xmm2
	movss [ebp-0x20], xmm0
	mulss xmm1, [ebp-0x2110]
	movss [ebp-0x210c], xmm1
	movss [esp], xmm1
	call cosf
	fstp dword [ebp-0x38]
	movss xmm0, dword [ebp-0x210c]
	andps xmm0, [_data16_7fffffff]
	cvtss2sd xmm0, xmm0
	ucomisd xmm0, [_double_0_00010000]
	jae _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_180
	jp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_180
	movss xmm0, dword [ebp-0x210c]
	mulss xmm0, xmm0
	mulss xmm0, [_float__0_16666667]
	addss xmm0, [_float_1_00000000]
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_290:
	mulss xmm0, [ebp-0x2110]
	movss xmm1, dword [ebp-0x20ec]
	mulss xmm1, xmm0
	movss [ebp-0x34], xmm1
	movss xmm2, dword [ebp-0x20f0]
	mulss xmm2, xmm0
	movss [ebp-0x30], xmm2
	mulss xmm0, [ebp-0x20f4]
	movss [ebp-0x2c], xmm0
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_250:
	lea esi, [ebx+0xf0]
	mov [esp+0x8], esi
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	lea edx, [ebp-0x58]
	mov [esp], edx
	call dQMultiply0
	mov edx, ebx
	mov ecx, 0x1
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_190:
	mov eax, [ebp+ecx*4-0x5c]
	mov [edx+0xf0], eax
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x5
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_190
	test byte [ebx+0x18], 0x2
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_200
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_270:
	mov [esp], esi
	call dNormalize4
	mov [esp+0x4], esi
	lea eax, [ebx+0x100]
	mov [esp], eax
	call dRfromQ
	mov eax, [edi]
	and dword [eax+0x18], 0xfffffffb
	add dword [ebp-0x20bc], 0x1
	add edi, 0x4
	mov edx, [ebp-0x20bc]
	cmp [ebp+0x10], edx
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_210
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_60:
	mov eax, [ebp+0x18]
	test eax, eax
	jle _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_220
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_630:
	xor edx, edx
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_230:
	mov ecx, [ebp+0x14]
	mov eax, [ecx+edx*4]
	mov dword [eax+0x10], 0x1
	add edx, 0x1
	cmp [ebp+0x18], edx
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_230
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_220:
	add esp, 0x21fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_170:
	movss xmm0, dword [ebx+0x140]
	movss xmm1, dword [ebx+0x144]
	movss xmm2, dword [ebx+0x148]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm1, xmm0
	mulss xmm1, [ebp-0x2110]
	movss [esp], xmm1
	movss [ebp-0x21d8], xmm1
	call cosf
	fstp dword [ebp-0x38]
	movss xmm1, dword [ebp-0x21d8]
	movaps xmm0, xmm1
	andps xmm0, [_data16_7fffffff]
	cvtss2sd xmm0, xmm0
	ucomisd xmm0, [_double_0_00010000]
	jae _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_240
	jp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_240
	movaps xmm0, xmm1
	mulss xmm0, xmm1
	mulss xmm0, [_float__0_16666667]
	addss xmm0, [_float_1_00000000]
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_300:
	mulss xmm0, [ebp-0x2110]
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x140]
	movss [ebp-0x34], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x144]
	movss [ebp-0x30], xmm1
	mulss xmm0, [ebx+0x148]
	movss [ebp-0x2c], xmm0
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_250
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_160:
	lea esi, [ebx+0xf0]
	mov [esp+0x8], esi
	lea eax, [ebx+0x140]
	mov [esp+0x4], eax
	lea eax, [ebp-0x38]
	mov [esp], eax
	call dDQfromW
	mov eax, ebx
	mov edx, 0x1
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_260:
	movss xmm0, dword [ebp+0x1c]
	mulss xmm0, [ebp+edx*4-0x3c]
	addss xmm0, [eax+0xf0]
	movss [eax+0xf0], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x5
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_260
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_270
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_200:
	mov [esp+0x8], esi
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x48]
	mov [esp], ecx
	call dDQfromW
	mov eax, ebx
	mov edx, 0x1
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_280:
	movss xmm0, dword [ebp-0x2110]
	mulss xmm0, [ebp+edx*4-0x4c]
	addss xmm0, [eax+0xf0]
	movss [eax+0xf0], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x5
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_280
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_270
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_180:
	movss xmm0, dword [ebp-0x210c]
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x21dc]
	movss xmm0, dword [ebp-0x21dc]
	divss xmm0, dword [ebp-0x210c]
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_290
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_240:
	movss [esp], xmm1
	movss [ebp-0x21d8], xmm1
	call sinf
	fstp dword [ebp-0x21dc]
	movss xmm0, dword [ebp-0x21dc]
	movss xmm1, dword [ebp-0x21d8]
	divss xmm0, xmm1
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_300
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_50:
	xor esi, esi
	mov dword [ebp-0x2188], 0x0
	lea ebx, [ebp-0x6a0]
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_310:
	mov [esp+0x4], ebx
	mov edi, [ebp+0x14]
	mov eax, [edi+esi*4]
	mov [esp], eax
	call _Z13jointGetInfo1PK7dxJointPNS_5Info1E
	mov eax, [ebp-0x2188]
	mov [ebp+esi*4-0x1b0], eax
	mov edx, [ebx]
	add eax, edx
	mov [ebp-0x2188], eax
	add esi, 0x1
	add ebx, 0x8
	cmp [ebp+0x18], esi
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_310
	test eax, eax
	jle _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_320
	mov [esp+0x4], eax
	lea ecx, [ebp-0x20b0]
	mov [esp], ecx
	call dSetZero
	mov ebx, [ebp-0x218c]
	mov eax, [ebx+0x14]
	mov [esp+0x8], eax
	mov esi, [ebp-0x2188]
	mov [esp+0x4], esi
	lea edi, [ebp-0x19c0]
	mov [esp], edi
	call dSetValue
	lea eax, [esi+esi*8]
	shl eax, 0x4
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x2198]
	mov [esp], eax
	call memset
	mov eax, [ebp-0x2198]
	xor edx, edx
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_330:
	mov dword [eax+0x80], 0xff7fffff
	mov dword [eax+0x84], 0x7f7fffff
	mov dword [ebp+edx*4-0x12d0], 0xffffffff
	add edx, 0x1
	add eax, 0x90
	cmp edx, [ebp-0x2188]
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_330
	mov dword [ebp-0x70], 0x24
	movss xmm0, dword [ebp-0x2190]
	movss [ebp-0x88], xmm0
	mov edx, [ebp-0x218c]
	mov eax, [edx+0x10]
	mov [ebp-0x84], eax
	xor edi, edi
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_340
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_360:
	add edi, 0x1
	cmp [ebp+0x18], edi
	jz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_350
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_340:
	mov ebx, [ebp+edi*8-0x6a0]
	test ebx, ebx
	jz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_360
	mov esi, [ebp+edi*4-0x1b0]
	lea eax, [esi+esi*8]
	shl eax, 0x4
	add eax, [ebp-0x2198]
	mov [ebp-0x80], eax
	lea edx, [eax+0x10]
	mov [ebp-0x7c], edx
	lea edx, [eax+0x20]
	mov [ebp-0x78], edx
	lea edx, [eax+0x30]
	mov [ebp-0x74], edx
	lea ecx, [esi*4]
	lea edx, [ebp-0x20b0]
	add edx, ecx
	mov [ebp-0x6c], edx
	lea edx, [ebp-0x19c0]
	add edx, ecx
	mov [ebp-0x68], edx
	lea edx, [eax+0x80]
	mov [ebp-0x64], edx
	add eax, 0x84
	mov [ebp-0x60], eax
	lea eax, [ebp-0x12d0]
	add eax, ecx
	mov [ebp-0x219c], eax
	mov [ebp-0x5c], eax
	lea eax, [ebp-0x88]
	mov [esp+0x8], eax
	mov edx, [ebp-0x218c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x14]
	mov eax, [ecx+edi*4]
	mov [esp], eax
	call _Z13jointGetInfo2P7dxJointP15dxWorldStepInfoPNS_5Info2E
	test ebx, ebx
	jle _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_360
	mov edx, [ebp-0x219c]
	xor ecx, ecx
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_380:
	mov eax, [edx]
	test eax, eax
	js _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_370
	lea eax, [esi+eax]
	mov [edx], eax
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_370:
	add ecx, 0x1
	add edx, 0x4
	cmp ebx, ecx
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_380
	add edi, 0x1
	cmp [ebp+0x18], edi
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_340
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_350:
	mov edx, [ebp-0x2198]
	mov dword [ebp-0x20c4], 0x0
	lea edi, [ebp-0x6a0]
	mov ebx, [ebp-0x20c4]
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_420:
	mov esi, [ebp+0x14]
	mov eax, [esi+ebx*4]
	mov esi, [eax+0x24]
	mov ebx, [eax+0x34]
	mov eax, [edi]
	test eax, eax
	jle _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_390
	xor eax, eax
	mov ecx, [edi]
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_400:
	mov [edx+0x1c], esi
	mov [edx+0x2c], ebx
	add edx, 0x90
	add eax, 0x1
	cmp ecx, eax
	jg _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_400
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_390:
	add dword [ebp-0x20c4], 0x1
	add edi, 0x8
	mov eax, [ebp-0x20c4]
	cmp [ebp+0x18], eax
	jz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_410
	mov ebx, eax
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_420
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_410:
	mov edi, [ebp+0x10]
	test edi, edi
	jg _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_430
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_690:
	mov ebx, [ebp-0x2198]
	xor edi, edi
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_450:
	mov esi, [ebx+0x2c]
	mov eax, [ebx+0x1c]
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*8-0x300]
	movss xmm2, dword [ebx]
	mulss xmm2, [eax]
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	movss xmm0, dword [ebx+0x8]
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	pxor xmm0, xmm0
	addss xmm2, xmm0
	lea edx, [ebx+0x10]
	lea ecx, [eax+0xc]
	movss xmm1, dword [ebx+0x10]
	mulss xmm1, [eax+0xc]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ecx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ecx+0x8]
	addss xmm1, xmm0
	addss xmm2, xmm1
	test esi, esi
	js _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_440
	lea eax, [esi+esi*2]
	lea eax, [ebp+eax*8-0x300]
	lea edx, [ebx+0x20]
	movss xmm1, dword [ebx+0x20]
	mulss xmm1, [eax]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	addss xmm2, xmm1
	lea edx, [ebx+0x30]
	lea ecx, [eax+0xc]
	movss xmm1, dword [ebx+0x30]
	mulss xmm1, [eax+0xc]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ecx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ecx+0x8]
	addss xmm1, xmm0
	addss xmm2, xmm1
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_440:
	movss [ebx+0x88], xmm2
	add ebx, 0x90
	add edi, 0x1
	cmp edi, [ebp-0x2188]
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_450
	mov edx, [ebp-0x2198]
	xor ecx, ecx
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_460:
	lea eax, [ecx*4]
	movss xmm0, dword [ebp-0x2190]
	mulss xmm0, [ebp+eax-0x20b0]
	subss xmm0, [edx+0x88]
	movss [edx+0x88], xmm0
	lea ebx, [ebp-0x19c0]
	lea eax, [ebx+eax]
	movss xmm0, dword [ebp-0x2190]
	mulss xmm0, [eax]
	movss [eax], xmm0
	add ecx, 0x1
	add edx, 0x90
	cmp ecx, [ebp-0x2188]
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_460
	mov esi, [ebp-0x218c]
	add esi, 0x18
	mov [ebp-0x21ec], esi
	movss xmm0, dword [esi+0x4]
	movss [ebp-0x2154], xmm0
	mov ecx, [ebp-0x2198]
	xor esi, esi
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_480:
	mov edx, [ecx+0x1c]
	mov ebx, [ecx+0x2c]
	mov edi, [ebp+0xc]
	mov eax, [edi+edx*4]
	movss xmm1, dword [eax+0x94]
	lea eax, [ecx+0x40]
	movaps xmm0, xmm1
	mulss xmm0, [ecx]
	movss [ecx+0x40], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x4]
	movss [eax+0x4], xmm0
	mulss xmm1, [ecx+0x8]
	movss [eax+0x8], xmm1
	lea edx, [edx+edx*2]
	shl edx, 0x4
	lea eax, [ebp-0xbe0]
	lea edx, [eax+edx]
	lea eax, [ecx+0x50]
	movss xmm1, dword [edx]
	mulss xmm1, [ecx+0x10]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ecx+0x14]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ecx+0x18]
	addss xmm1, xmm0
	movss [ecx+0x50], xmm1
	movss xmm1, dword [edx+0x10]
	mulss xmm1, [ecx+0x10]
	movss xmm0, dword [edx+0x14]
	mulss xmm0, [ecx+0x14]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x18]
	mulss xmm0, [ecx+0x18]
	addss xmm1, xmm0
	movss [eax+0x4], xmm1
	movss xmm1, dword [edx+0x20]
	mulss xmm1, [ecx+0x10]
	movss xmm0, dword [edx+0x24]
	mulss xmm0, [ecx+0x14]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x28]
	mulss xmm0, [ecx+0x18]
	addss xmm1, xmm0
	movss [eax+0x8], xmm1
	test ebx, ebx
	js _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_470
	mov eax, [edi+ebx*4]
	movss xmm1, dword [eax+0x94]
	lea edx, [ecx+0x60]
	lea eax, [ecx+0x20]
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x20]
	movss [ecx+0x60], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	movss [edx+0x4], xmm0
	mulss xmm1, [eax+0x8]
	movss [edx+0x8], xmm1
	lea eax, [ebx+ebx*2]
	shl eax, 0x4
	lea edx, [ebp-0xbe0]
	lea eax, [edx+eax]
	lea edx, [ecx+0x70]
	movss xmm1, dword [eax]
	mulss xmm1, [ecx+0x30]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [ecx+0x34]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [ecx+0x38]
	addss xmm1, xmm0
	movss [ecx+0x70], xmm1
	movss xmm1, dword [eax+0x10]
	mulss xmm1, [ecx+0x30]
	movss xmm0, dword [eax+0x14]
	mulss xmm0, [ecx+0x34]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x18]
	mulss xmm0, [ecx+0x38]
	addss xmm1, xmm0
	movss [edx+0x4], xmm1
	movss xmm1, dword [eax+0x20]
	mulss xmm1, [ecx+0x30]
	movss xmm0, dword [eax+0x24]
	mulss xmm0, [ecx+0x34]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x28]
	mulss xmm0, [ecx+0x38]
	addss xmm1, xmm0
	movss [edx+0x8], xmm1
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_470:
	add ecx, 0x90
	add esi, 0x1
	cmp esi, [ebp-0x2188]
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_480
	mov ecx, [ebp+0x10]
	lea eax, [ecx+ecx*2]
	shl eax, 0x3
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x450]
	mov [esp], ebx
	call memset
	mov ecx, [ebp-0x2198]
	xor ebx, ebx
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_500:
	lea eax, [ecx+0x40]
	movss xmm2, dword [ecx]
	mulss xmm2, [ecx+0x40]
	movss xmm0, dword [ecx+0x4]
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	movss xmm0, dword [ecx+0x8]
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	pxor xmm0, xmm0
	addss xmm2, xmm0
	lea eax, [ecx+0x10]
	lea edx, [ecx+0x50]
	movss xmm1, dword [ecx+0x10]
	mulss xmm1, [ecx+0x50]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	addss xmm2, xmm1
	mov esi, [ecx+0x2c]
	test esi, esi
	js _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_490
	lea eax, [ecx+0x20]
	lea edx, [ecx+0x60]
	movss xmm1, dword [ecx+0x20]
	mulss xmm1, [ecx+0x60]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	addss xmm2, xmm1
	lea eax, [ecx+0x30]
	lea edx, [ecx+0x70]
	movss xmm1, dword [ecx+0x30]
	mulss xmm1, [ecx+0x70]
	movss xmm0, dword [eax+0x4]
	mulss xmm0, [edx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [eax+0x8]
	mulss xmm0, [edx+0x8]
	addss xmm1, xmm0
	addss xmm2, xmm1
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_490:
	addss xmm2, [ebp+ebx*4-0x19c0]
	movss xmm0, dword [ebp-0x2154]
	divss xmm0, xmm2
	movss [ecx+0x8c], xmm0
	add ecx, 0x90
	add ebx, 0x1
	cmp ebx, [ebp-0x2188]
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_500
	mov edx, [ebp-0x2198]
	xor ecx, ecx
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_510:
	movss xmm0, dword [edx+0x8c]
	movaps xmm1, xmm0
	mulss xmm1, [edx]
	movss [edx], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [edx+0x4]
	movss [edx+0x4], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [edx+0x8]
	movss [edx+0x8], xmm1
	lea eax, [edx+0x10]
	movaps xmm1, xmm0
	mulss xmm1, [edx+0x10]
	movss [edx+0x10], xmm1
	movaps xmm1, xmm0
	mulss xmm1, [eax+0x4]
	movss [eax+0x4], xmm1
	mulss xmm0, [eax+0x8]
	movss [eax+0x8], xmm0
	movss xmm1, dword [edx+0x8c]
	lea eax, [edx+0x20]
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x20]
	movss [edx+0x20], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	mulss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
	movss xmm1, dword [edx+0x8c]
	lea eax, [edx+0x30]
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x30]
	movss [edx+0x30], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	mulss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
	movss xmm0, dword [edx+0x88]
	mulss xmm0, [edx+0x8c]
	movss [edx+0x88], xmm0
	movss xmm0, dword [edx+0x8c]
	mulss xmm0, [ebp+ecx*4-0x19c0]
	movss [edx+0x8c], xmm0
	add edx, 0x90
	add ecx, 0x1
	cmp ecx, [ebp-0x2188]
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_510
	xor edx, edx
	xor ecx, ecx
	mov ebx, [ebp-0x2188]
	mov esi, [ebp-0x2194]
	lea eax, [esi+ebx*4-0x4]
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_530:
	mov ebx, [ebp+edx*4-0x12d0]
	test ebx, ebx
	js _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_520
	mov [eax], edx
	sub eax, 0x4
	add edx, 0x1
	cmp edx, [ebp-0x2188]
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_530
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_660:
	cmp dword [ebp+0x10], 0x1
	jz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_540
	mov edx, [ebp-0x21ec]
	mov edx, [edx]
	mov [ebp-0x2138], edx
	test edx, edx
	jz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_550
	mov ecx, [g_holdrand]
	mov [ebp-0x212c], ecx
	mov dword [ebp-0x2134], 0x0
	mov eax, [ebp-0x2188]
	cdq
	mov [ebp-0x21b8], eax
	mov [ebp-0x21b4], edx
	movss xmm7, dword [_data16_80000000]
	mov eax, [ebp-0x2134]
	and eax, 0x7
	cmp eax, 0x7
	jz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_560
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_720:
	mov edi, [ebp-0x2194]
	mov [ebp-0x20e8], edi
	mov dword [ebp-0x20c8], 0x0
	mov edx, edi
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_570
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_610:
	lea eax, [edx+edx*8]
	shl eax, 0x4
	movss xmm3, dword [edi+0x84]
	mov ecx, [ebp-0x2198]
	mulss xmm3, [eax+ecx+0xc]
	andps xmm3, [_data16_7fffffff]
	movaps xmm6, xmm3
	xorps xmm6, xmm7
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_620:
	mov ebx, [edi+0x2c]
	mov [ebp-0x2124], ebx
	mov eax, [edi+0x1c]
	lea eax, [eax+eax*2]
	lea esi, [ebp+eax*8-0x450]
	movss xmm5, dword [edi+0xc]
	movaps xmm0, xmm5
	mulss xmm0, [edi+0x8c]
	movss xmm4, dword [edi+0x88]
	subss xmm4, xmm0
	lea eax, [esi+0x4]
	mov [ebp-0x2120], eax
	lea edx, [esi+0x8]
	mov [ebp-0x211c], edx
	lea ecx, [esi+0xc]
	mov [ebp-0x2128], ecx
	lea eax, [edi+0x10]
	lea ebx, [esi+0x10]
	mov [ebp-0x2118], ebx
	lea edx, [esi+0x14]
	mov [ebp-0x2114], edx
	movss xmm2, dword [esi]
	mulss xmm2, [edi]
	movss xmm0, dword [esi+0x4]
	mulss xmm0, [edi+0x4]
	addss xmm2, xmm0
	movss xmm0, dword [esi+0x8]
	mulss xmm0, [edi+0x8]
	addss xmm2, xmm0
	movss xmm1, dword [esi+0xc]
	mulss xmm1, [edi+0x10]
	movss xmm0, dword [esi+0x10]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [esi+0x14]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	addss xmm2, xmm1
	subss xmm4, xmm2
	mov eax, [ebp-0x2124]
	test eax, eax
	js _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_580
	mov ecx, [ebp-0x2124]
	lea eax, [ecx+ecx*2]
	lea ebx, [ebp+eax*8-0x450]
	lea eax, [edi+0x20]
	lea edx, [ebx+0xc]
	lea ecx, [edi+0x30]
	movss xmm2, dword [ebx]
	mulss xmm2, [edi+0x20]
	movss xmm0, dword [ebx+0x4]
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	movss xmm0, dword [ebx+0x8]
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	movss xmm1, dword [ebx+0xc]
	mulss xmm1, [edi+0x30]
	movss xmm0, dword [edx+0x4]
	mulss xmm0, [ecx+0x4]
	addss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	mulss xmm0, [ecx+0x8]
	addss xmm1, xmm0
	addss xmm2, xmm1
	subss xmm4, xmm2
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_710:
	movaps xmm1, xmm4
	addss xmm1, xmm5
	movaps xmm0, xmm1
	subss xmm0, xmm3
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x2
	movaps xmm0, xmm2
	andps xmm3, xmm2
	andnps xmm0, xmm1
	orps xmm0, xmm3
	movaps xmm2, xmm6
	subss xmm2, xmm1
	movaps xmm1, xmm2
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x6
	andps xmm0, xmm2
	movaps xmm3, xmm2
	andnps xmm3, xmm6
	orps xmm3, xmm0
	movaps xmm1, xmm3
	subss xmm1, xmm5
	movss [edi+0xc], xmm3
	lea eax, [edi+0x40]
	movaps xmm0, xmm1
	mulss xmm0, [edi+0x40]
	addss xmm0, [esi]
	movss [esi], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	mov edx, [ebp-0x2120]
	addss xmm0, [edx]
	movss [esi+0x4], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x8]
	mov ecx, [ebp-0x211c]
	addss xmm0, [ecx]
	movss [esi+0x8], xmm0
	lea eax, [edi+0x50]
	movaps xmm0, xmm1
	mulss xmm0, [edi+0x50]
	mov esi, [ebp-0x2128]
	addss xmm0, [esi]
	movss [esi], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	mov edx, [ebp-0x2118]
	addss xmm0, [edx]
	movss [esi+0x4], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x8]
	mov ecx, [ebp-0x2114]
	addss xmm0, [ecx]
	movss [esi+0x8], xmm0
	mov esi, [ebp-0x2124]
	test esi, esi
	js _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_590
	lea eax, [edi+0x60]
	movaps xmm0, xmm1
	mulss xmm0, [edi+0x60]
	addss xmm0, [ebx]
	movss [ebx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	addss xmm0, [ebx+0x4]
	movss [ebx+0x4], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x8]
	addss xmm0, [ebx+0x8]
	movss [ebx+0x8], xmm0
	lea eax, [ebx+0xc]
	lea edx, [edi+0x70]
	movaps xmm0, xmm1
	mulss xmm0, [edi+0x70]
	addss xmm0, [ebx+0xc]
	movss [ebx+0xc], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	addss xmm0, [eax+0x4]
	movss [eax+0x4], xmm0
	mulss xmm1, [edx+0x8]
	addss xmm1, [eax+0x8]
	movss [eax+0x8], xmm1
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_590:
	add dword [ebp-0x20c8], 0x1
	add dword [ebp-0x20e8], 0x4
	mov ebx, [ebp-0x20c8]
	cmp [ebp-0x2188], ebx
	jbe _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_600
	mov edx, [ebp-0x20e8]
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_570:
	mov eax, [edx]
	mov edx, [ebp+eax*4-0x12d0]
	lea eax, [eax+eax*8]
	shl eax, 0x4
	mov edi, [ebp-0x2198]
	add edi, eax
	test edx, edx
	jns _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_610
	movss xmm3, dword [edi+0x84]
	movss xmm6, dword [edi+0x80]
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_620
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_550:
	mov ecx, [ebp+0x10]
	test ecx, ecx
	jle _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_630
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_740:
	xor esi, esi
	lea ecx, [ebp-0x450]
	mov ebx, [ebp+0xc]
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_640:
	mov eax, [ebx]
	lea edx, [eax+0x130]
	movss xmm0, dword [ebp+0x1c]
	mulss xmm0, [ecx]
	addss xmm0, [eax+0x130]
	movss [eax+0x130], xmm0
	movss xmm0, dword [ebp+0x1c]
	mulss xmm0, [ecx+0x4]
	addss xmm0, [edx+0x4]
	movss [edx+0x4], xmm0
	movss xmm0, dword [ebp+0x1c]
	mulss xmm0, [ecx+0x8]
	addss xmm0, [edx+0x8]
	movss [edx+0x8], xmm0
	mov eax, [ebx]
	lea edx, [eax+0x140]
	movss xmm0, dword [ebp+0x1c]
	mulss xmm0, [ecx+0xc]
	addss xmm0, [eax+0x140]
	movss [eax+0x140], xmm0
	movss xmm0, dword [ebp+0x1c]
	mulss xmm0, [ecx+0x10]
	addss xmm0, [edx+0x4]
	movss [edx+0x4], xmm0
	movss xmm0, dword [ebp+0x1c]
	mulss xmm0, [ecx+0x14]
	addss xmm0, [edx+0x8]
	movss [edx+0x8], xmm0
	add esi, 0x1
	add ebx, 0x4
	add ecx, 0x18
	cmp [ebp+0x10], esi
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_640
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_650
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_520:
	mov edi, [ebp-0x2194]
	mov [edi+ecx*4], edx
	add ecx, 0x1
	add edx, 0x1
	cmp edx, [ebp-0x2188]
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_530
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_660
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_430:
	mov dword [ebp-0x20c0], 0x0
	mov dword [ebp-0x20e4], 0x0
	mov dword [ebp-0x20e0], 0x3
	lea edx, [ebp-0x2f4]
	mov [ebp-0x21c4], edx
	lea edi, [ebp-0x300]
	lea esi, [ebp-0xbe0]
	mov ecx, [ebp+0xc]
	mov [ebp-0x21c8], ecx
	mov ebx, ecx
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_700:
	mov ecx, [ebx]
	movss xmm2, dword [ecx+0x94]
	mov edx, [ebp-0x20e4]
	lea eax, [ebp+edx*4-0x300]
	xor edx, edx
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_670:
	movaps xmm0, xmm2
	mulss xmm0, [ecx+edx*4+0x98]
	movss xmm1, dword [ebp-0x2190]
	mulss xmm1, [ecx+edx*4+0x130]
	addss xmm0, xmm1
	movss [eax], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x3
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_670
	mov ebx, [ebp-0x20e0]
	movss xmm1, dword [ebp+ebx*8-0xbf8]
	mulss xmm1, [ecx+0xa8]
	movss xmm0, dword [esi+0x4]
	mulss xmm0, [ecx+0xac]
	addss xmm1, xmm0
	movss xmm0, dword [esi+0x8]
	mulss xmm0, [ecx+0xb0]
	addss xmm1, xmm0
	movss [edi+0xc], xmm1
	movss xmm1, dword [esi+0x10]
	mulss xmm1, [ecx+0xa8]
	movss xmm0, dword [esi+0x14]
	mulss xmm0, [ecx+0xac]
	addss xmm1, xmm0
	movss xmm0, dword [esi+0x18]
	mulss xmm0, [ecx+0xb0]
	addss xmm1, xmm0
	movss [edi+0x10], xmm1
	movss xmm1, dword [esi+0x20]
	mulss xmm1, [ecx+0xa8]
	movss xmm0, dword [esi+0x24]
	mulss xmm0, [ecx+0xac]
	addss xmm1, xmm0
	movss xmm0, dword [esi+0x28]
	mulss xmm0, [ecx+0xb0]
	addss xmm1, xmm0
	movss [edi+0x14], xmm1
	mov eax, edi
	and edx, 0xffffff00
	mov ebx, [ebp-0x21c4]
	sub ebx, edi
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_680:
	movss xmm0, dword [ebp-0x2190]
	mulss xmm0, [ecx+edx*4+0x140]
	addss xmm0, [ebx+eax]
	movss [eax+ebx], xmm0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x3
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_680
	add dword [ebp-0x20c0], 0x1
	add dword [ebp-0x21c8], 0x4
	add dword [ebp-0x20e4], 0x6
	add esi, 0x30
	add edi, 0x18
	add dword [ebp-0x20e0], 0x6
	add dword [ebp-0x21c4], 0x18
	mov eax, [ebp-0x20c0]
	cmp [ebp+0x10], eax
	jz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_690
	mov ebx, [ebp-0x21c8]
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_700
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_580:
	xor ebx, ebx
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_710
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_600:
	add dword [ebp-0x2134], 0x1
	mov esi, [ebp-0x2134]
	cmp [ebp-0x2138], esi
	jbe _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_550
	mov eax, esi
	and eax, 0x7
	cmp eax, 0x7
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_720
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_560:
	mov dword [ebp-0x2130], 0x0
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_730:
	mov edx, [ebp-0x212c]
	mov eax, [edx]
	lea esi, [eax+eax*2]
	lea esi, [eax+esi*4]
	shl esi, 0x4
	add esi, eax
	shl esi, 0x8
	sub esi, eax
	lea esi, [eax+esi*4+0x269ec3]
	mov ecx, esi
	shr ecx, 0x11
	mov eax, [ebp-0x21b8]
	mul ecx
	mov [ebp-0x21e8], eax
	imul ecx, [ebp-0x21b4]
	add edx, ecx
	mov [ebp-0x21e4], edx
	mov edx, [ebp-0x21e8]
	mov ecx, [ebp-0x21e4]
	shrd edx, ecx, 0xf
	mov edi, edx
	lea eax, [esi+esi*2]
	lea eax, [esi+eax*4]
	shl eax, 0x4
	add eax, esi
	shl eax, 0x8
	sub eax, esi
	lea eax, [esi+eax*4+0x269ec3]
	mov ecx, [ebp-0x212c]
	mov [ecx], eax
	shr eax, 0x11
	mov [ebp-0x21e8], eax
	mov dword [ebp-0x21e4], 0x0
	mov eax, [ebp-0x21b8]
	mul dword [ebp-0x21e8]
	mov ecx, eax
	mov eax, [ebp-0x21e8]
	imul eax, [ebp-0x21b4]
	lea ebx, [eax+edx]
	shrd ecx, ebx, 0xf
	mov edx, ecx
	mov ebx, [ebp-0x2194]
	mov ecx, [ebx+edi*4]
	mov eax, [ebx+edx*4]
	mov [ebx+edi*4], eax
	mov [ebx+edx*4], ecx
	add dword [ebp-0x2130], 0x1
	mov esi, [ebp-0x2130]
	cmp [ebp-0x2188], esi
	ja _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_730
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_720
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_540:
	mov eax, [ebp-0x21ec]
	mov eax, [eax]
	mov [ebp-0x2150], eax
	mov edx, [ebp-0x2198]
	mov eax, [edx+0x1c]
	lea eax, [eax+eax*2]
	lea eax, [ebp+eax*8-0x450]
	mov [ebp-0x2144], eax
	add eax, 0xc
	mov [ebp-0x213c], eax
	mov eax, [ebp-0x2150]
	test eax, eax
	jz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_740
	mov ecx, [g_holdrand]
	mov [ebp-0x2140], ecx
	mov dword [ebp-0x214c], 0x0
	mov ebx, [ebp-0x2144]
	add ebx, 0x4
	mov [ebp-0x21a8], ebx
	mov esi, [ebp-0x2144]
	add esi, 0x8
	mov [ebp-0x21ac], esi
	mov edi, [ebp-0x2144]
	add edi, 0x10
	mov [ebp-0x21a0], edi
	mov eax, [ebp-0x2144]
	add eax, 0x14
	mov [ebp-0x21a4], eax
	mov eax, [ebp-0x2188]
	cdq
	mov [ebp-0x21c0], eax
	mov [ebp-0x21bc], edx
	movss xmm7, dword [_data16_7fffffff]
	mov eax, [ebp-0x214c]
	and eax, 0x7
	cmp eax, 0x7
	jz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_750
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_800:
	mov ebx, [ebp-0x2194]
	xor esi, esi
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_760
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_780:
	lea eax, [edx+edx*8]
	shl eax, 0x4
	movss xmm5, dword [ecx+0x84]
	mov edi, [ebp-0x2198]
	mulss xmm5, [eax+edi+0xc]
	andps xmm5, xmm7
	movaps xmm6, xmm5
	xorps xmm6, [_data16_80000000]
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_790:
	movss xmm4, dword [ecx+0xc]
	movaps xmm0, xmm4
	mulss xmm0, [ecx+0x8c]
	movss xmm3, dword [ecx+0x88]
	subss xmm3, xmm0
	lea eax, [ecx+0x10]
	mov edx, [ebp-0x2144]
	movss xmm2, dword [edx]
	mulss xmm2, [ecx]
	mov edi, [ebp-0x21a8]
	movss xmm0, dword [edi]
	mulss xmm0, [ecx+0x4]
	addss xmm2, xmm0
	mov edx, [ebp-0x21ac]
	movss xmm0, dword [edx]
	mulss xmm0, [ecx+0x8]
	addss xmm2, xmm0
	mov edi, [ebp-0x213c]
	movss xmm1, dword [edi]
	mulss xmm1, [ecx+0x10]
	mov edx, [ebp-0x21a0]
	movss xmm0, dword [edx]
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	mov edi, [ebp-0x21a4]
	movss xmm0, dword [edi]
	mulss xmm0, [eax+0x8]
	addss xmm1, xmm0
	addss xmm2, xmm1
	subss xmm3, xmm2
	addss xmm3, xmm4
	movaps xmm0, xmm3
	subss xmm0, xmm5
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x2
	movaps xmm0, xmm1
	andps xmm5, xmm1
	andnps xmm0, xmm3
	orps xmm0, xmm5
	movaps xmm1, xmm6
	subss xmm1, xmm3
	pxor xmm2, xmm2
	cmpss xmm2, xmm1, 0x6
	andps xmm0, xmm2
	movaps xmm5, xmm2
	andnps xmm5, xmm6
	orps xmm5, xmm0
	movaps xmm1, xmm5
	subss xmm1, xmm4
	movss [ecx+0xc], xmm5
	lea eax, [ecx+0x40]
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x40]
	mov edx, [ebp-0x2144]
	addss xmm0, [edx]
	movss [edx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	mov edi, [ebp-0x21a8]
	addss xmm0, [edi]
	movss [edi], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x8]
	mov eax, [ebp-0x21ac]
	addss xmm0, [eax]
	movss [eax], xmm0
	lea eax, [ecx+0x50]
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x50]
	mov edx, [ebp-0x213c]
	addss xmm0, [edx]
	movss [edx], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	mov ecx, [ebp-0x21a0]
	addss xmm0, [ecx]
	movss [ecx], xmm0
	mulss xmm1, [eax+0x8]
	mov edi, [ebp-0x21a4]
	addss xmm1, [edi]
	movss [edi], xmm1
	add esi, 0x1
	add ebx, 0x4
	cmp [ebp-0x2188], esi
	jbe _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_770
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_760:
	mov eax, [ebx]
	mov edx, [ebp+eax*4-0x12d0]
	lea eax, [eax+eax*8]
	shl eax, 0x4
	mov ecx, [ebp-0x2198]
	add ecx, eax
	test edx, edx
	jns _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_780
	movss xmm5, dword [ecx+0x84]
	movss xmm6, dword [ecx+0x80]
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_790
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_770:
	add dword [ebp-0x214c], 0x1
	mov eax, [ebp-0x214c]
	cmp [ebp-0x2150], eax
	jbe _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_740
	mov eax, [ebp-0x214c]
	and eax, 0x7
	cmp eax, 0x7
	jnz _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_800
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_750:
	mov dword [ebp-0x2148], 0x0
_Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_810:
	mov edx, [ebp-0x2140]
	mov eax, [edx]
	lea esi, [eax+eax*2]
	lea esi, [eax+esi*4]
	shl esi, 0x4
	add esi, eax
	shl esi, 0x8
	sub esi, eax
	lea esi, [eax+esi*4+0x269ec3]
	mov ecx, esi
	shr ecx, 0x11
	mov eax, [ebp-0x21c0]
	mul ecx
	mov [ebp-0x21e8], eax
	imul ecx, [ebp-0x21bc]
	add edx, ecx
	mov [ebp-0x21e4], edx
	mov edx, [ebp-0x21e8]
	mov ecx, [ebp-0x21e4]
	shrd edx, ecx, 0xf
	mov edi, edx
	lea eax, [esi+esi*2]
	lea eax, [esi+eax*4]
	shl eax, 0x4
	add eax, esi
	shl eax, 0x8
	sub eax, esi
	lea eax, [esi+eax*4+0x269ec3]
	mov ecx, [ebp-0x2140]
	mov [ecx], eax
	shr eax, 0x11
	mov [ebp-0x21e8], eax
	mov dword [ebp-0x21e4], 0x0
	mov eax, [ebp-0x21c0]
	mul dword [ebp-0x21e8]
	mov ecx, eax
	mov eax, [ebp-0x21e8]
	imul eax, [ebp-0x21bc]
	lea ebx, [eax+edx]
	shrd ecx, ebx, 0xf
	mov edx, ecx
	mov ebx, [ebp-0x2194]
	mov ecx, [ebx+edi*4]
	mov eax, [ebx+edx*4]
	mov [ebx+edi*4], eax
	mov [ebx+edx*4], ecx
	add dword [ebp-0x2148], 0x1
	mov esi, [ebp-0x2148]
	cmp [ebp-0x2188], esi
	ja _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_810
	jmp _Z14dxQuickStepperP7dxWorldPKP6dxBodyiPKP7dxJointif_800


;Initialized global or static variables of quickstep:
SECTION .data

;Zero initialized global or static variables of quickstep:
SECTION .bss
g_holdrand: resb 0x4


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_float_39_00000000:		dd 0x421c0000	; 39
_float_999900_00000000:		dd 0x49741dc0	; 999900
_float_1600_00000000:		dd 0x44c80000	; 1600
_float_999999995904_00000000:		dd 0x5368d4a5	; 1e+12
_float_0_50000000:		dd 0x3f000000	; 0.5
_double_0_00010000:		dq 0x3f1a36e2eb1c432d	; 0.0001
_float__0_16666667:		dd 0xbe2aaaab	; -0.166667

alignb 16
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD
