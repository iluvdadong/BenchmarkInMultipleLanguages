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
			System.out.println("���� �ð�(ms) : "+dwTime+"ms");
			System.out.println("���� �ð�(ms) : "+dwLast+"ms");
			System.out.println("�ɸ� �ð�(ms) : "+(dwLast-dwTime)+"ms");
			System.out.println("���� ī��Ʈ : "+i+"��");
			System.out.println("1000ms������ ���� ī��Ʈ : " + ((double)i / (dwLast - dwTime) * 1000) + "��");
		}
		catch(InterruptedException e){
			System.out.println(e.getMessage());
		}
	}
}