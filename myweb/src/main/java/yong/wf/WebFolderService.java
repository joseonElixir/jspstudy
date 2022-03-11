package yong.wf;

import java.io.*;


public class WebFolderService {

	public static final String USERS_HOME = 
		"D:\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\myweb\\wf\\users";
	
	private int totalSize, usedSize,freeSize; // 총용량, 사용용량,남은용량
	private String user; //계정정보
	public String crpath; //현재경로 
	
	public WebFolderService() {
		totalSize = 1024 * 1024 * 10;
	}
	
	public int getTotalSize() {
		return totalSize;
	}

	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}

	public int getUsedSize() {
		return usedSize;
	}

	public void setUsedSize(int useSize) {
		this.usedSize = useSize;
	}

	public int getFreeSize() {
		return freeSize;
	}

	public void setFreeSize(int freeSize) {
		this.freeSize = freeSize;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getCrpath() {
		return crpath;
	}

	public void setCrpath(String crpath) {
		this.crpath = crpath;
	}
	
	/**사용자 공간 세팅 관련 메소드*/
	public void settingUserFolder() {
		
		File f = new File(USERS_HOME+"\\"+user);
		if(!f.exists()) {
			f.mkdir(); // 폴더 생성	
		}
		usedSize = 0;
		settingUsedSize(f);
		freeSize=totalSize-usedSize;
		
	}
	
	/**실제 용량 계산 메소드*/
	public void settingUsedSize(File f) {
		File files[] = f.listFiles();
		
		for(int i=0;i<files.length;i++) {			
			if(files[i].isFile()) {
				usedSize+=files[i].length();
			}else {
				settingUsedSize(files[i]);//재귀함수호출 기능
				
			}
			
		}
	}
	public File[] seachUserFile() {
		File f = new File(USERS_HOME+"\\"+user);
		return f.listFiles();
		
	}
	
	public void deletef(String path) {
		File f = new File(path);
		
		if(f.isFile()) {
			f.delete();
			
		}else {
			while(f.exists()) {
				File []files = f.listFiles();
				for(int i=0; i<files.length;i++) {
					files[i].delete();
					
					if(files[i].isDirectory()) {
						this.deletef(path+"/"+files[i].getName());
					}
				
				} //for
					f.delete();
			} //while
		
		}

	}
	public void createFolder(String fn) {
		if(fn!=null) {
			File f = new File(USERS_HOME+"/"+crpath+"/"+fn);
			if(!f.exists());
				f.mkdir();
		}
	}
	
	
	
}
