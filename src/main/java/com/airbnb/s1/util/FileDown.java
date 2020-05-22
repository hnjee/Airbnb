package com.airbnb.s1.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

//import com.sy.s5.board.file.BoardFileDTO;

@Component
public class FileDown extends AbstractView{
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
//		BoardFileDTO boardFileDTO = (BoardFileDTO)model.get("file");
//		String fileName = boardFileDTO.getFileName();
//		String path = "";
//	
//		
//		if(boardFileDTO.getBoard().equals("1")) {
//			path = "/resources/uploadnotice";
//		
//		} else {
//			path ="/resources/uploadqna";
//		}
//		path = request.getSession().getServletContext().getRealPath(path);
//		
//		//1. HDD에서 파일을 읽을 준비
//		File file = new File(path, fileName);
//		System.out.println(file.exists());
//		//2. 파일의 크기
//		response.setContentLength((int)file.length());
//		
//		//3. 다운로드시 파일 이름 인코딩
//		String downName = URLEncoder.encode(boardFileDTO.getOriName(), "UTF-8");
//		
//		//4. header 설정
//		response.setHeader("Content-disposition", "attachment;filename=\""+downName+"\"");
//		response.setHeader("Content-transfer-Encoding", "binary");
//		
//		
//		//5. Stream 연결 후 전송
//		FileInputStream fi = new FileInputStream(file);
//		OutputStream os = response.getOutputStream();
//		
//		FileCopyUtils.copy(fi, os);
//		
//		os.close();
//		fi.close();
				
	}
	
	
	

}
