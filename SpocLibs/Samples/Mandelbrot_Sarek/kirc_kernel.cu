__device__ float spoc_fadd ( float a, float b ) { return (a + b);}
__device__ float spoc_fminus ( float a, float b ) { return (a - b);}
__device__ float spoc_fmul ( float a, float b ) { return (a * b);}
__device__ float spoc_fdiv ( float a, float b ) { return (a / b);}
#ifdef __cplusplus
extern "C" {
#endif

__global__ void spoc_dummy ( int* spoc_var0, int spoc_var1, int spoc_var2, float spoc_var3 ) {
{int spoc_var5;
{int spoc_var6;
{int spoc_var7;
{int spoc_var8;
{int spoc_var9;
{float spoc_var10;
{float spoc_var11;
{float spoc_var12;
{float spoc_var13;
{float spoc_var14;
{float spoc_var15;
{float spoc_var16;
spoc_var5 = (threadIdx.y + (blockIdx.y * blockDim.y)); ;
spoc_var6 = (threadIdx.x + (blockIdx.x * blockDim.x)); ;
if (spoc_var5 >= 1000 || spoc_var6 >= 1000){
  return  ;}
 ;
spoc_var7 = (spoc_var6 + spoc_var1); ;
spoc_var8 = (spoc_var5 + spoc_var2); ;
spoc_var9 = 0; ;
spoc_var10 = 0.f; ;
spoc_var11 = 0.f; ;
spoc_var12 = 0.f; ;
spoc_var13 = 0.f; ;
spoc_var14 = ((4.f * (((float) (spoc_var7)  / (float) (1000) ) / spoc_var3)) - 2.f); ;
spoc_var15 = ((4.f * (((float) (spoc_var8)  / (float) (1000) ) / spoc_var3)) - 2.f); ;
spoc_var16 = ((spoc_var10 * spoc_var10) + (spoc_var11 * spoc_var11)); ;
while (spoc_var9 < 50 && spoc_var16 <= 4.f){
  spoc_var9 = (spoc_var9 + 1); ;
  spoc_var12 = (((spoc_var10 * spoc_var10) - (spoc_var11 * spoc_var11)) + spoc_var14); ;
  spoc_var13 = (((2.f * spoc_var10) * spoc_var11) + spoc_var15); ;
  spoc_var10 = spoc_var12; ;
  spoc_var11 = spoc_var13; ;
  spoc_var16 = ((spoc_var10 * spoc_var10) + (spoc_var11 * spoc_var11));} ;
spoc_var0[((spoc_var5 * 1000) + spoc_var6)] = spoc_var9;;
}
;
}
;
}
;
}
;
}
;
}
;
}
;
}
;
}
;
}
;
}
;
}


}
#ifdef __cplusplus
}
#endif