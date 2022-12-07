#include "../common/book.h"
int main( void ) {
	cudaDeviceProp prop;
	int count;
	HANDLE_ERROR( cudaGetDeviceCount( &count ) );
	for (int i=0; i< count; i++) {
		HANDLE_ERROR( cudaGetDeviceProperties( &prop, i ) );
//Do something with our device's properties
	}
}