package com.airbnb.s1.util;

public class Pager {
	private Long curPage;
	private Integer perPage;
	
	private long startRow;
	private long lastRow;
	private long totalPage;
	private long totalBlock;
	private long curBlock;
	private long startNum;
	private long lastNum;
	
	
	public Long getCurPage() {
		if(this.curPage==null || this.curPage==0) {
			this.curPage=1L;
		}
		return curPage;
	}
	public void setCurPage(Long curPage) {
		this.curPage = curPage;
	}
	
	//한 페이지 당 몇개의 데이터 보여줄 건지
	public Integer getPerPage() {
		if(this.perPage==null || this.perPage==0) {
			this.perPage=5;
		}
		return perPage;
	}
	public void setPerPage(Integer perPage) {
		this.perPage = perPage;
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
	public long getCurBlock() {
		return curBlock;
	}
	public void setCurBlock(long curBlock) {
		this.curBlock = curBlock;
	}
	public long getStartNum() {
		if(this.startNum==0L) {
			this.startNum=1L;
		}
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
	
	
	public void makeRow() {
		this.startRow = (this.getCurPage()-1)*this.getPerPage()+1;
		this.lastRow = this.getPerPage()*this.getCurPage();
	}
	
	public void makePage(long totalCount) {
		this.totalPage = totalCount/this.getPerPage();
		//나머지로 떨어지지 않는 나머지 데이터들 처리
		if(totalCount%this.perPage!=0) {
			this.totalPage++;
			
			//페이징 처리하는 한 블럭에 나타낼 갯수
			//1,2,3,4,5		| 6,7,8,9,10
			long perBlock=5L;
			this.totalBlock = this.totalPage/perBlock;
			if(totalPage%perBlock!=0) {
				this.totalBlock++;
			}
			
			this.curBlock = this.curPage/perBlock;
			
			if(this.curPage%perBlock!=0) {
				this.curBlock++;
			}
			
			this.lastNum=this.curBlock*perBlock;
			this.startNum=(this.curBlock-1)*perBlock+1;
			
			if(this.curBlock == this.totalBlock) {
				this.lastNum=this.totalPage;
			}
		}
	}
}
