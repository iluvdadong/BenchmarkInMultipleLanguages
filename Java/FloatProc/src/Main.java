import java.util.Date;
import java.util.Random;
class FloatingProc{
	public static void main(String [] args){
		try{
			Thread.sleep(1000);
			
			Date date=new Date();
			long dwTime;
			long dwLast;
			int i=0;
			double iNum1,iNum2,iNum3,iNum4;
			double iResult;
			Random rnd=new Random();
			dwTime=date.getTime();
			
			for(i=0;i<100000000;i++){
				iNum1=rnd.nextDouble()*10000;
				iNum2=rnd.nextDouble()*10000;
				iNum3=rnd.nextDouble()*10000;
				do{
					iNum4=rnd.nextDouble()*10000;
				}while(iNum4==0);
				
                iResult = ((iNum1 + iNum2) * iNum3) / iNum4;
			}
			
			date=new Date();
			dwLast=date.getTime();
			System.out.println("���� �ð�(ms) : "+dwTime+"ms");
			System.out.println("���� �ð�(ms) : "+dwLast+"ms");
			System.out.println("�ɸ� �ð�(ms) : "+(dwLast-dwTime)+"ms");
		}
		catch(InterruptedException e){
			System.out.println(e.getMessage());
		}
	}
}