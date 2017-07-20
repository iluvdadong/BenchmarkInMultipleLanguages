import java.util.*;
class LoopTest{
	public static void main(String [] args){
		try{
			Thread.sleep(1000);
			Date date=new Date();
			long dwTime;
			long dwLast;
			long i=0;
			dwTime=date.getTime();
			while(true){
				i++;
				date=new Date();
				dwLast=date.getTime();
				if(dwLast-dwTime>=1000){
					break;
				}
			}
			System.out.println("시작 시간(ms) : "+dwTime+"ms");
			System.out.println("시작 시간(ms) : "+dwLast+"ms");
			System.out.println("걸린 시간(ms) : "+(dwLast-dwTime)+"ms");
			System.out.println("루프 카운트 : "+i+"번");
			System.out.println("1000ms동안의 루프 카운트 : " + ((double)i / (dwLast - dwTime) * 1000) + "번");
		}
		catch(InterruptedException e){
			System.out.println(e.getMessage());
		}
	}
}