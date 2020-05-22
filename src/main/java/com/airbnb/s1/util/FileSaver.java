package com.airbnb.s1.util;

import java.io.File;
import java.io.FileOutputStream;
import java.util.Calendar;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileSaver {
	
	//1. 폴더 생성
	//2. 저장할 파일명 생성
	//3. 파일 HDD 저장
	
	//1. FileCopyUtils 클래스 사용
	public String saveByUtils(MultipartFile file, String path) throws Exception{
		
		File f = new File(path);
		if(!f.exists()) {
			//	resources/memberUpload
			//	resources/upload/member
			f.mkdirs();		// 부모 폴더까지 생성
		}	
		//a. 저장할 파일명 생성
		String fileName = this.makeNameByUUID(file.getOriginalFilename());
		System.out.println(fileName);
		f = new File(f,fileName);
		//b. HDD에 저장
		FileCopyUtils.copy(file.getBytes(),f);
		return fileName;
	}
	
	
	
	//파일명 생성 
	private String makeNameByUUID(String name) throws Exception {
		
		String result = UUID.randomUUID().toString();
		result = result+name;
		System.out.println(result);
		return result;
	}	
	private Long makeNameByTime(String name) throws Exception{
		//Calendar는 추상 클래스 이므로 
		Calendar cal = Calendar.getInstance();
		long l = cal.getTimeInMillis();

		String result = name.substring(0, name.indexOf("."));	
		String type =name.substring(name.lastIndexOf("."));
		
		name = result + "_"+l+type;
		return l;
	}
	
	
	
	//2.MultipartFile
	public String saveByTransfer(MultipartFile file, String path) throws Exception{
		File f = new File(path);
		if(!f.exists()) {
			f.mkdirs();
		}
		String fileName = this.makeNameByUUID(file.getOriginalFilename());
		f = new File(f, fileName);
		file.transferTo(f);
		return fileName;
	}
	
	//3. OutputStream
	public String saveByStream(MultipartFile file, String path) throws Exception{
		File f = new File(path);
		if(!f.exists()) {
			f.mkdirs();
		}
		String fileName = this.makeNameByUUID(file.getOriginalFilename());
		f = new File(f,fileName);
		FileOutputStream fs = new FileOutputStream(f);
		fs.write(file.getBytes());
		fs.close();
		return fileName;
	}
	
	
	
	//file delete
	public int deleteFile(String fileName, String path) throws Exception{
		File file = new File(path,fileName);
		boolean check = false;
		int res = 0;
		if(file.exists()) {
			check = file.delete();
		}
		if(check==true) {
			res=1;
		}
		
		return res;
	}
	
	
	
}
