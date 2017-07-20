

#include<stdio.h>
#include<Windows.h>
void main(){
	Sleep(1000);

	DWORD dwTime;
	DWORD dwLast;
	DWORD i=0;
	dwTime=GetTickCount();
	while(true){
		i++;
		dwLast=GetTickCount();
		if(dwLast-dwTime>=1000){
			break;
		}
	}
	printf("시작 시간(ms) : %dms\n",dwTime);
	printf("종료 시간(ms) : %dms\n",dwLast);
	printf("걸린 시간(ms) : %dms\n",dwLast - dwTime);
	printf("카운트 횟수 : %d번\n",i);
	printf("1000ms당 카운트 횟수 : %f번\n",((double)i / (dwLast - dwTime) * 1000));
	getchar();
}
