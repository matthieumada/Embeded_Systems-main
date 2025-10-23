#include <stdint.h>

#define DATA_SIZE 1000

// Function to perform vector addition
void example(volatile int in1[DATA_SIZE], volatile int in2[DATA_SIZE], volatile int out[DATA_SIZE]) {
	#pragma HLS INTERFACE s_axilite port=return bundle=AXI_CPU
	#pragma HLS INTERFACE s_axilite port=in1 bundle=AXI_CPU
	#pragma HLS INTERFACE s_axilite port=in2 bundle=AXI_CPU
	#pragma HLS INTERFACE s_axilite port=out bundle=AXI_CPU

	// Add the vectors
	for (int i = 0; i < DATA_SIZE; i++) {
		//Insert pragma to utilize FPGA cons
		out[i] = in1[i] + in2[i];
	}

}
