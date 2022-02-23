package yong.emp;

public class EmpDTO {
	private int idx;
	private String name;
	private String email;
	private String dept;
	//DTO는 내가 사용할 테이블의 컬럼명을 기준으로 만든다.
	
	public EmpDTO() {
		// TODO Auto-generated constructor stub
		System.out.println("EmpDTO 생성자 호출.");
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	
}
