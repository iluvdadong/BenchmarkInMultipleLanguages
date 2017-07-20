// FloatingProc.cpp : Defines the entry point for the console application.
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
    double iNum1,iNum2,iNum3,iNum4;
    double iResult;

    dwTime = GetTickCount();
    for(i=0;i<100000000;i++){
        iNum1 = rand()/1000.0;
        iNum2 = rand()/1000.0;
        iNum3 = rand()/1000.0;
        do{
            iNum4 = rand()/1000.0;
        }while(iNum4==0);

        iResult = ((iNum1 + iNum2) * iNum3) / iNum4;
    }
    dwLast = GetTickCount();
	printf("시작 시간(ms) : %d\n",dwTime);
	printf("종료 시간(ms) : %d\n",dwLast);
	printf("걸린 시간 : %d\n",dwLast - dwTime);
	getchar();

	return 0;
}
