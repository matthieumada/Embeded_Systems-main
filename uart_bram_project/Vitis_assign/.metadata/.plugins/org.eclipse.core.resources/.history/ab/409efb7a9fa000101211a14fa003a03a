#include "xil_io.h"
#include "xil_printf.h"
#include "xuartlite.h"
#include "xparameters.h"

// Définitions BRAM et UART
#define BRAM_BASEADDR       XPAR_BRAM_0_BASEADDR
#define UARTLITE_DEVICE_ID  XPAR_AXI_UARTLITE_0_DEVICE_ID

XUartLite UartLite;

int main() {
    int Status;
    u8 SendBuffer[100];
    u8 RecvBuffer[100];
    int Index = 0, SentCount = 0, RecvCount = 0;

    xil_printf("=== Projet BRAM + UART ===\n\r");

    // Write in BRAM
    const char *msg = "Hello from la BRAM to l'UART!\r\n";
    while (msg[Index] != '\0') {
        Xil_Out8(BRAM_BASEADDR + Index, msg[Index]);
        Index++;
    }
    Xil_Out8(BRAM_BASEADDR + Index, '\0'); // End of message

    xil_printf("Message written in octet\n\r", Index);

    // UART Initialization
    Status = XUartLite_Initialize(&UartLite, UARTLITE_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        xil_printf("Erreur init UART\r\n");
        return XST_FAILURE;
    }


    //   ReadBRAM and send UART
    xil_printf("Envoi du contenu BRAM via UART...\n\r");

    Index = 0;
    while (1) {
        char c = Xil_In8(BRAM_BASEADDR + Index);
        if (c == '\0') break;
        SendBuffer[Index] = c;
        Index++;
    }
    SendBuffer[Index] = '\0';

    //Send full buffer
    while (SentCount < Index) {
        SentCount += XUartLite_Send(&UartLite, &SendBuffer[SentCount], Index - SentCount);
    }

    xil_printf("Message sent: %s\r\n", SendBuffer);

    // UART reception
    xil_printf("Waiting for the message...\n\r");

    while (1) {
        RecvCount = XUartLite_Recv(&UartLite, RecvBuffer, sizeof(RecvBuffer) - 1);
        if (RecvCount > 0) {
            RecvBuffer[RecvCount] = '\0';
            xil_printf(" Get from UART: %s\r\n", RecvBuffer);

            // Write in BRAM
            for (int i = 0; i < RecvCount; i++) {
                Xil_Out8(BRAM_BASEADDR + i, RecvBuffer[i]);
            }
            Xil_Out8(BRAM_BASEADDR + RecvCount, '\0');
            xil_printf("Written in bram.\n\r");

            break;
        }
    }

    xil_printf("=== test completed ===\n\r");
    return XST_SUCCESS;
}
