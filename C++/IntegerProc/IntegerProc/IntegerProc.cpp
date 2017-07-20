// IntegerProc.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include<stdlib.h>
#include<time.h>
#include<windows.h>

int _tmain(int argc, _TCHAR* argv[])
{
	Sleep(1000);

	srand((unsigned int)time(NULL));

    DWORD dwTime;
    DWORD dwLast;
    int i;
    long iNum1,iNum2,iNum3,iNum4;
    long iResult;

    dwTime = GetTickCount();
    for(i=0;i<100000000;i++){
        iNum1 = rand()%10000;
        iNum2 = rand()%10000;
        iNum3 = rand()%10000;
        do{
            iNum4 = rand()%10000;
        }while(iNum4==0);

        iResult = ((iNum1 + iNum2) * iNum3) / iNum4;
    }
    dwLast = GetTickCount();
	printf("시작 시간(ms) : %d\n",dwTime);
	printf("종료 시간(ms) : %d\n",dwLast);
	printf("걸린 시간(ms) : %d\n",dwLast - dwTime);
	getchar();

	return 0;
}
