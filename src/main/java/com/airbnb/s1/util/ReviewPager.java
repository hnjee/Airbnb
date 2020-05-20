package com.airbnb.s1.util;

public class ReviewPager {
	private String placeNum;

	private long totalPage;			//전체 페이지의 수 
	private long totalBlock;		//전체 페이지 블럭의 수 
	
	private Integer perPage;		//한 페이지 당 글의 수  		*초기화 필요*
	private long perBlock;			//한 블럭 당 페이지의 수 		*초기화 필요

	private Long curPage;			//현재 페이지   				*초기화 필요* 
	private long startRow;			//현재 페이지의 첫번째 글 번호
	private long lastRow;			//현재 페이지의 마지막 글 번호
	
	private long curBlock;			//현재 페이지블럭 
	private long startNum;			//현재 페이지블럭의 처음 페이지 번호   
	private long lastNum;			//현재 페이지블럭의 마지막 페이지 번호
									
	private String search;

	
	public String getPlaceNum() {
		return placeNum;
	}

	public void setPlaceNum(String placeNum) {
		this.placeNum = placeNum;
	}

	public long getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(long totalPage) {
		this.totalPage = totalPage;
	}

	public long getTotalBlock() {
		return totalBlock;
	}

	public void setTotalBlock(long totalBlock) {
		this.totalBlock = totalBlock;
	}

	public Integer getPerPage() { //한 페이지 당 글의 수  	*초기화 필요*
		if(this.perPage==null||this.perPage==0) {
			this.perPage=6; //한 페이지에 리뷰  6개
		}
		return perPage;
	}

	public void setPerPage(Integer perPage) {
		this.perPage = perPage;
	}

	public long getPerBlock() {  //한 블럭 당 페이지의 수 	*초기화 필요
		this.perBlock = 5l; //한 블럭에 페이지 5개
		return perBlock;
	}

	public void setPerBlock(long perBlock) {
		this.perBlock = perBlock;
	}

	public Long getCurPage() {	//현재 페이지   	*초기화 필요* 
		if(this.curPage==null||this.curPage==0) {
			this.curPage=1L; 
		}
		return curPage;
	}

	public void setCurPage(Long curPage) {
		this.curPage = curPage;
	}

	public long getStartRow() {
		return startRow;
	}

	public void setStartRow(long startRow) {
		this.startRow = startRow;
	}

	public long getLastRow() {
		return lastRow;
	}

	public void setLastRow(long lastRow) {
		this.lastRow = lastRow;
	}

	public long getCurBlock() {
		return curBlock;
	}

	public void setCurBlock(long curBlock) {
		this.curBlock = curBlock;
	}

	public long getStartNum() {
		return startNum;
	}

	public void setStartNum(long startNum) {
		this.startNum = startNum;
	}

	public long getLastNum() {
		return lastNum;
	}

	public void setLastNum(long lastNum) {
		this.lastNum = lastNum;
	}

	public String getSearch() {
		if(this.search==null) {
			this.search="";
		}
		return search;
	}
	
	public void setSearch(String search) {
		this.search = search;
	}
	

	//한 페이지에서 첫번째글과 마지막글의 번호 계산  
	public void makeRow() {
		this.startRow = (this.getCurPage()-1)*this.getPerPage()+1;
		this.lastRow = this.getCurPage()*this.getPerPage();
	}
	
	public void makePage(long totalCount) {
		//1. 전체 글의 수 : totalCount
			
		//2. 전체 페이지 수 계산
		this.totalPage = totalCount/this.getPerPage();
		if(totalCount%this.getPerPage()!=0) {
			this.totalPage++;
		}
	
		//3. 전체 페이지 블럭 수 계산

		this.totalBlock = this.totalPage/this.getPerBlock();
		if(this.totalPage % this.perBlock!=0) {
			this.totalBlock++;
		}
		//----------------------------------------전체 구하기 끝 
		
		//4. 현재 페이지 블럭 번호 계산 
		this.curBlock = this.curPage / this.perBlock;
		if(this.curPage % this.perBlock!=0) {
			this.curBlock++;
		}
		
		//5. 현재 페이지 블럭의 첫번째와 마지막 페이지 번호 계산
		this.startNum = (this.curBlock-1) * this.perBlock + 1;
		this.lastNum = this.curBlock * this.perBlock;
		
		//5-2. 마지막 페이지 블럭일 경우
		if(this.curBlock==this.totalBlock) {
			this.lastNum = this.totalPage;		//마지막 페이지번호를 전체 페이지번호로 변경  
		}
		
		//6. 검색 결과가 없을 경우 
		if(totalCount==0) {
			this.startNum=1;
			this.lastNum=1;
		}
	}

}
