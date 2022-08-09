// includes
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <cuda_runtime.h>
#define N 8
// MAIN: rutina principal ejecutada en el host
int main(int argc, char** argv)
{
// declaracion
float *hst_matriz;
float *dev_matriz;
// reserva en el host
hst_matriz = (float*)malloc( N*N*sizeof(float) );
// reserva en el device
cudaMalloc( (void**)&dev_matriz, N*N*sizeof(float) );
// inicializacion de datos
srand ( (int)time(NULL) );
for (int i=0; i<N*N; i++)
{
hst_matriz[i] = (float)( rand() % 10 );
}
// copia de datos
cudaMemcpy(dev_matriz, hst_matriz, N*N*sizeof(float), cudaMemcpyHostToDevice);
// salida
cudaFree( dev_matriz )
printf("\npulsa INTRO para finalizar...");
fflush(stdin);
char tecla = getchar();
return 0;
}