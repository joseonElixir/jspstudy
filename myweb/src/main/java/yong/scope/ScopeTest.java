package yong.scope;

public class ScopeTest {

	private int count;
	
	public ScopeTest() {
		count=0;
		System.out.println("ScopeTest 객체 생성됨.");
		
	}

	public int getCount() {
		System.out.println("현재 count의 값 : "+this.count);
		return count;
	}

	public void setCount(int count) {
		this.count += count;
		System.out.println("count 값이 누적되었다. 현재 값 : "+this.count);
	}
	
}
