package com.beans;

public class BoardPageBean {
	
	//최소 페이지 번호
	private int min;
	//최대 페이지 번호
	private int max;
	//이번 버튼 페이지 번호
	private int prevPage;
	//다음 버튼 페이지 번호
	private int nextPage;
	//전체 페이지 갯수
	private int pageCnt;
	//현재 페이지 번호
	private int currentPage;
	
	/* contentCnt : 전체글 갯수 
	 * currentPage : 현재 페이지 번호
	 * contentPageCnt : 페이지당 글의 갯수(10)
	 * paginationCnt : 한번에 표시할 페이지 버튼의 최대 갯수*/
	
	public BoardPageBean(int contentCnt, int currentPage, int contentPageCnt, int paginationCnt) {
		
		this.currentPage = currentPage;
		//현재 페이지 번호
		
		pageCnt = contentCnt / contentPageCnt;
		//전체 페이지 갯수 = 전체글 갯수 / 페이지당 글의 갯수(10)
		//0페이지 = 1  / 10 => 나머지가 0으로 떨어지지 않는 게시글의 수 ==> 0.1	페이지+1 필요O
		//1페이지 = 10 / 10 => 나머지가 0으로 떨어지는 게시글의 수 ==>0			페이지+1 필요X
		//1페이지 = 11 / 10 => 나머지가 0으로 떨어지지 ㅇ낳는 게시글의 수 => 1.1	페이지+1 필요O
		
		if(contentCnt % contentPageCnt > 0) {
			pageCnt++;
		}
		//게시글의 갯수 1~9 => 1페이지
		//게시글의 갯수 11~19 => 2페이지
		
		min = ((currentPage - 1) / contentPageCnt) * contentPageCnt +1;
		//현재 페이지 1 ==> [1]부터 화면에 출력
		//현재 페이지 2 ==> [1]부터 화면에 출력
		//현재 페이지 10 ==> [1]부터 화면에 출력
		//현재 페이지 11 ==> [11]부터 화면에 출력
		//현재 페이지 19 ==> [11]부터 화면에 출력
		
		max = min + paginationCnt -1;
		// [1] 이 최소페이지, [10] max
		// [2] 가 최소페이지, [10] max
		// [10] 이 최소페이지, [10] max
		// [11] 이 최소페이지, [20] max
		// [19] 가 최소페이지, [20] max
		
		if(max > pageCnt) {
			max = pageCnt;
		}
		
		//현재 페이지가 2페이지, max페이지는 2페이지로 제한 => [10]X
		//현재 페이지가 9페이지, max페이지는 9페이지로 제한
		
		prevPage = min -1;
		nextPage = max +1;
		//이전 페이지는 최소페이지에서 -1		<이전 [11]	=> [10]
		//다음 페이지는 최대페이지에서 +1		[10] 다음		=> [11]
		
		if(nextPage > pageCnt) {
			nextPage = pageCnt;
		}
		//최대 페이지 제한
		//현재 페이지가 15페이지라면 nextPage는 15페이지로 조정
		
	}
	
	
	public int getMin() {
		return min;
	}
	public int getMax() {
		return max;
	}
	public int getPrevPage() {
		return prevPage;
	}
	public int getNextPage() {
		return nextPage;
	}
	public int getPageCnt() {
		return pageCnt;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	
	
}
