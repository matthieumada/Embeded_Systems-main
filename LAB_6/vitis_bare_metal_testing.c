/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xexample.h"

#define DATA_SIZE 1000

int main()
{
    init_platform();
    print("Hello World\n\r");

    XExample ip_inst;
    XExample_Config *ip_cfg;

    // Initialize the IP core
    ip_cfg = XExample_LookupConfig(XPAR_XEXAMPLE_0_DEVICE_ID);
    if (ip_cfg == NULL) {
        printf("Error: Could not find the IP core configuration.\n");
        return XST_FAILURE;
    }

    int status = XExample_CfgInitialize(&ip_inst, ip_cfg);
    if (status != XST_SUCCESS) {
        printf("Error: Could not initialize the IP core.\n");
        return XST_FAILURE;
    }

    // Perform operations with the IP core here
    
    // Test the IP core functionality
    int in1[DATA_SIZE];
    int in1_cpy[DATA_SIZE];
    int in2[DATA_SIZE];
    int in2_cpy[DATA_SIZE];
    int out[DATA_SIZE];

    // Initialize input arrays
    for (int i = 0; i < DATA_SIZE; i++) {
        in1[i] = i;
        in2[i] = i;
    }

    // Call the IP core function
    XExample_Write_in1_Words(&ip_inst, 0, in1, DATA_SIZE);
    XExample_Write_in2_Words(&ip_inst, 0, in2, DATA_SIZE);
//    XExample_IsIdle(&ip_inst);
//    XExample_Start(&ip_inst);
    XExample_Start(&ip_inst);

    // Wait for the IP core to finish
    while (!XExample_IsDone(&ip_inst));

    XExample_Read_in1_Words(&ip_inst, 0, in1_cpy, DATA_SIZE);
    XExample_Read_in2_Words(&ip_inst, 0, in2_cpy, DATA_SIZE);
    XExample_Read_out_r_Words(&ip_inst, 0, out, DATA_SIZE);
    // Check the results
    int errors = 0;
    for (int i = 0; i < DATA_SIZE; i++) {
        int expected = in1[i] + in2[i];
//        printf("\nin1_cpy[%d]: %d\n",i, in1_cpy[i]);
//        printf("in2_cpy[%d]: %d\n",i, in2_cpy[i]);
//        printf("result[%d]: %d\n",i, out[i]);
        if (out[i] != expected) {
            errors++;
        }
    }

    if (errors == 0) {
        printf("Test passed.\n");
    } else {
        printf("Test failed with %d errors.\n", errors);
    }

    // Cleanup
    XExample_DisableAutoRestart(&ip_inst);
    cleanup_platform();

    return XST_SUCCESS;
}
