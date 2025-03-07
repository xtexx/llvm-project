// RUN: not llvm-mc -triple=amdgcn -mcpu=gfx1100 %s 2>&1 | FileCheck --check-prefixes=NOGFX11 --implicit-check-not=error: %s

image_sample_d v[64:66], [v32, v16, v8, v4, v2, v1], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_2D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_d v[64:66], [v32, v16, v8, v4, v2, v1, v0, v20, v21], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_d v[64:66], [v32, v16, v8, v4, v2, v1, v5], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_CUBE
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_d v[64:66], [v32, v16, v8, v4, v0, v20, v21], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_2D_ARRAY
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_d_cl v[64:66], [v32, v16, v8, v4, v2, v1, v0, v20, v21, v48], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_c_d v[64:66], [v32, v16, v0, v2, v1, v4, v8, v12, v16, v17], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_c_d_cl v[64:66], [v32, v16, v0, v2, v1, v4, v8, v12, v16, v17, v18], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_c_b_cl v[64:66], [v32, v16, v0, v2, v1, v5], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_d_o v[64:66], [v32, v16, v0, v2, v4, v5, v6, v7, v8, v9], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_d_cl_o v[64:66], [v32, v16, v0, v2, v4, v5, v6, v7, v8, v9, v10], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_b_cl_o v[64:66], [v32, v16, v0, v2, v1, v4], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_c_cl_o v[64:66], [v32, v16, v0, v2, v1, v4], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_c_d_o v[64:66], [v32, v16, v0, v2, v1, v4, v5, v6, v7, v8, v9], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_c_d_cl_o v[64:66], [v32, v16, v0, v2, v1, v4, v5, v6, v7, v8, v9, v10], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_c_l_o v[64:66], [v32, v16, v0, v2, v1, v4], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_c_b_o v[64:66], [v32, v16, v0, v2, v1, v4], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_sample_c_b_cl_o v[64:66], [v32, v16, v0, v2, v1, v4, v5], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_gather4_c_b_cl v[64:67], [v32, v0, v4, v5, v6, v7], s[4:11], s[100:103] dmask:0x1 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: not a valid operand.

image_gather4_cl_o v[64:67], [v32, v0, v4, v5, v6], s[4:11], s[100:103] dmask:0x1 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_gather4_l_o v[64:67], [v32, v0, v4, v5, v6], s[4:11], s[100:103] dmask:0x1 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_gather4_b_o v[64:67], [v32, v0, v4, v5, v6], s[4:11], s[100:103] dmask:0x1 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_gather4_b_cl_o v[64:67], [v32, v0, v4, v5, v6, v7], s[4:11], s[100:103] dmask:0x1 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_gather4_c_o v[64:67], [v32, v0, v4, v5, v6], s[4:11], s[100:103] dmask:0x1 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_gather4_c_cl_o v[64:67], [v32, v0, v4, v5, v6, v7], s[4:11], s[100:103] dmask:0x1 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_gather4_c_l_o v[64:67], [v32, v0, v4, v5, v6, v7], s[4:11], s[100:103] dmask:0x1 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_gather4_c_b_o v[64:67], [v32, v0, v4, v5, v6, v7], s[4:11], s[100:103] dmask:0x1 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_gather4_c_b_cl_o v[64:67], [v32, v0, v4, v5, v6, v7, v8], s[4:11], s[100:103] dmask:0x1 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_sample_cd v[64:66], [v32, v16, v0, v2, v1, v4, v5, v6, v7], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_sample_cd_cl v[64:66], [v32, v16, v0, v2, v1, v4, v5, v6, v7, v8], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_sample_c_cd v[64:66], [v32, v16, v0, v2, v1, v4, v5, v6, v7, v8], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_sample_c_cd_cl v[64:66], [v32, v16, v0, v2, v1, v4, v5, v6, v7, v8, v9], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_sample_cd_o v[64:66], [v32, v16, v0, v2, v1, v4, v5, v6, v7, v8], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_sample_cd_cl_o v[64:66], [v32, v16, v0, v2, v1, v4, v5, v6, v7, v8, v9], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_sample_c_cd_o v[64:66], [v32, v16, v0, v2, v1, v4, v5, v6, v7, v8, v9], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_sample_c_cd_cl_o v[64:66], [v32, v16, v0, v2, v1, v4, v5, v6, v7, v8, v9, v10], s[4:11], s[100:103] dmask:0x7 dim:SQ_RSRC_IMG_3D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_atomic_fcmpswap v[4:5], v32, s[96:103] dmask:0x3 dim:SQ_RSRC_IMG_1D glc
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_atomic_fmin v4, v32, s[96:103] dmask:0x1 dim:SQ_RSRC_IMG_1D glc
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_atomic_fmax v4, v32, s[96:103] dmask:0x1 dim:SQ_RSRC_IMG_1D glc
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: instruction not supported on this GPU

image_msaa_load v[1:4], v[5:7], s[8:15] dmask:0xf dim:SQ_RSRC_IMG_2D_MSAA
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid image_gather dmask: only one bit must be set

image_msaa_load v5, v[1:3], s[8:15] dmask:0x1 dim:SQ_RSRC_IMG_2D_MSAA d16
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: operands are not valid for this GPU or mode

image_msaa_load v14, [v204,v11,v14,v19], s[40:47] dmask:0x1 dim:SQ_RSRC_IMG_2D_MSAA_ARRAY
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: operands are not valid for this GPU or mode

image_bvh_intersect_ray v[4:6], v[0:15], s[4:7]
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_bvh_intersect_ray v[4:7], v[0:15], s[4:7] a16
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_bvh64_intersect_ray v[4:6], v[0:15], s[4:7]
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_bvh64_intersect_ray v[4:7], v[0:7], s[4:7] a16
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_bvh_intersect_ray v[39:42], [v50, v46, v[20:22], v[40:42], v[47:49], v0], s[12:15]
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_bvh_intersect_ray v[39:42], [v50, v46, v47, v[40:42]], s[12:15] a16
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_bvh64_intersect_ray v[39:42], [v50, v46, v[20:22], v[40:42], v[47:49]], s[12:15]
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_bvh64_intersect_ray v[39:42], [v[50:51], v46, v[20:22]], s[12:15] a16
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_bvh_intersect_ray v[4:7], v[9:16], s[4:7] noa16
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: image address size does not match a16

image_bvh_intersect_ray v[39:42], [v50, v46, v[20:22], v[40:42]], s[12:15] noa16
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: image address size does not match a16

// missing dim
image_atomic_add v5, v1, s[8:15] dmask:0x1 unorm glc
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_atomic_and v5, v1, s[8:15] dmask:0x1 unorm glc
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_atomic_cmpswap v[5:6], v1, s[8:15] dmask:0x3 unorm glc
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_atomic_dec v5, v1, s[8:15] dmask:0x1 unorm glc
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_atomic_inc v5, v1, s[8:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_atomic_or v5, v1, s[8:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_atomic_smax v5, v1, s[8:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_atomic_smin v5, v1, s[8:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_atomic_sub v5, v1, s[8:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_atomic_swap v5, v1, s[8:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_atomic_umax v5, v1, s[8:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_atomic_umin v5, v1, s[8:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_atomic_xor v5, v1, s[8:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4 v[5:8], v[1:2], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4_b v[5:8], v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4_b_cl v[5:8], v[1:4], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4_c v[5:8], v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4_c_b v[5:8], v[1:4], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4_c_b_cl v[5:8], v[1:8], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4_c_cl v[5:8], v[1:4], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4_c_l v[5:8], v[1:4], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4_cl v[5:8], v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4_c_lz v[5:8], v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4_c_lz_o v[5:8], v[1:4], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4h v[254:255], v[254:255], ttmp[8:15], ttmp[12:15] dmask:0x4 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4_l v[5:8], v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4_lz v[5:8], v[1:2], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4_lz_o v[5:8], v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_gather4_o v[5:8], v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_get_lod v5, v1, s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_get_resinfo v5, v1, s[8:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_load v[0:3], v0, s[0:7] dmask:0xf unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_load_mip v[5:6], v1, s[8:15] dmask:0x3 a16
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_load_pck v[5:6], v1, s[8:15] dmask:0x1 tfe
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_load_pck_sgn v5, v1, s[8:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_load_mip_pck v5, v[1:2], s[8:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_load_mip_pck_sgn v5, v[1:2], s[8:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_msaa_load v[5:7], v[1:2], s[96:103] dmask:0x4 a16 tfe d16
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample v[5:6], v1, s[8:15], s[12:15] dmask:0x1 tfe
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_b v5, v[1:2], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_b_cl v5, v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_b_cl_o v5, v[1:4], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_b_o v5, v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c v5, v[1:2], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_b v5, v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_b_cl v5, v[1:4], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_b_cl_o v5, v[1:8], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_b_o v5, v[1:4], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_cl v5, v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_cl_o v5, v[1:4], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_d v5, v[1:4], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_d_cl v5, v[1:8], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_d_cl_g16 v[0:3], v[0:4], s[0:7], s[8:11] dmask:0xf
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_d_cl_o v5, v[1:8], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_d_cl_o_g16 v[5:6], v[1:6], s[8:15], s[12:15] dmask:0x3
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_d_g16 v[0:3], v[0:3], s[0:7], s[8:11] dmask:0xf
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_d_o v5, v[1:8], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_d_o_g16 v[5:6], v[1:5], s[8:15], s[12:15] dmask:0x3
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_l v5, v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_cl v5, v[1:2], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_l_o v5, v[1:4], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_cl_o v5, v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_lz v5, v[1:2], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_lz_o v5, v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_c_o v5, v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_d v5, v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_d_cl v5, v[1:4], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_d_cl_g16 v[0:3], v[0:3], s[0:7], s[8:11] dmask:0xf
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_d_cl_o v5, v[1:8], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_d_cl_o_g16 v[5:6], v[1:5], s[8:15], s[12:15] dmask:0x3
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_d_g16 v[0:3], v[0:2], s[0:7], s[8:11] dmask:0xf
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_d_o v5, v[1:4], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_d_o_g16 v[5:6], v[1:4], s[8:15], s[12:15] dmask:0x3
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_l v5, v[1:2], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_l_o v5, v[1:3], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_lz v5, v1, s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_lz_o v5, v[1:2], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_sample_o v5, v[1:2], s[8:15], s[12:15] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_store v1, v2, s[12:19] dmask:0x0 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_store_mip v1, v[2:3], s[12:19] dmask:0x0 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_store_pck v1, v[2:3], s[12:19] dmask:0x1 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

image_store_mip_pck v1, v[2:3], s[12:19] dmask:0x0 unorm
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: missing dim operand

// null is not allowed as SRSRC or SSAMP
image_atomic_add v1, v[10:11], null dmask:0x1 dim:SQ_RSRC_IMG_2D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_atomic_and v1, v[10:11], null dmask:0x1 dim:SQ_RSRC_IMG_2D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_atomic_cmpswap v[0:1], v[10:11], null dmask:0x3 dim:SQ_RSRC_IMG_2D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_atomic_dec v1, v[10:11], null dmask:0x1 dim:SQ_RSRC_IMG_2D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_atomic_inc v1, v[10:11], null dmask:0x1 dim:SQ_RSRC_IMG_2D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_atomic_or v1, v[10:11], null dmask:0x1 dim:SQ_RSRC_IMG_2D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_atomic_smax v1, v[10:11], null dmask:0x1 dim:SQ_RSRC_IMG_2D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_atomic_smin v1, v[10:11], null dmask:0x1 dim:SQ_RSRC_IMG_2D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_atomic_sub v1, v[10:11], null dmask:0x1 dim:SQ_RSRC_IMG_2D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_atomic_swap v1, v[10:11], null dmask:0x1 dim:SQ_RSRC_IMG_2D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_atomic_umax v1, v[10:11], null dmask:0x1 dim:SQ_RSRC_IMG_2D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_atomic_umin v1, v[10:11], null dmask:0x1 dim:SQ_RSRC_IMG_2D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_atomic_xor v1, v[10:11], null dmask:0x1 dim:SQ_RSRC_IMG_2D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_gather4 v[64:67], v32, null, s[4:11], dmask:0x1 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_gather4 v[64:67], v32, s[4:11], null dmask:0x1 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_gather4_b v[64:67], v[32:33], null, s[100:103] dmask:0x1 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_gather4_b v[64:67], v[32:33], s[4:11], null dmask:0x1 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_gather4_c v[64:67], v[32:33], null, s[100:103] dmask:0x1 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_gather4_c v[64:67], v[32:33], s[4:11], null dmask:0x1 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_gather4h v[64:67], v32, null, s[100:103] dmask:0x1 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_gather4h v[64:67], v32, s[4:11], null dmask:0x1 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_gather4_l v[64:67], v[32:33], null, s[100:103] dmask:0x1 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_gather4_l v[64:67], v[32:33], s[4:11], null dmask:0x1 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_gather4_o v[64:67], v[32:33], null, s[100:103] dmask:0x1 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_gather4_o v[64:67], v[32:33], s[4:11], null dmask:0x1 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_load v[4:7], v0, null dmask:0xf dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_store v[0:3], v[254:255], null dmask:0xf dim:SQ_RSRC_IMG_2D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_sample v[5:6], v1, null, s[12:15] dmask:0x3 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_sample v[5:6], v1, s[8:15], null dmask:0x3 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_sample_b v[5:6], v[1:2], null, s[12:15] dmask:0x3 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_sample_b v[5:6], v[1:2], s[8:15], null dmask:0x3 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_sample_c v[5:6], v[1:2], null, s[12:15] dmask:0x3 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_sample_c v[5:6], v[1:2], s[8:15], null dmask:0x3 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_sample_d v[5:6], v[1:3], null, s[12:15] dmask:0x3 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_sample_d v[5:6], v[1:3], s[8:15], null dmask:0x3 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_sample_l v[5:6], v[1:2], null, s[12:15] dmask:0x3 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_sample_l v[5:6], v[1:2], s[8:15], null dmask:0x3 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_sample_o v[5:6], v[1:2], null, s[12:15] dmask:0x3 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_sample_o v[5:6], v[1:2], s[8:15], null dmask:0x3 dim:SQ_RSRC_IMG_1D
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_bvh_intersect_ray v[4:7], v[9:19], null
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction

image_bvh64_intersect_ray v[4:7], v[9:20], null
// NOGFX11: :[[@LINE-1]]:{{[0-9]+}}: error: invalid operand for instruction
