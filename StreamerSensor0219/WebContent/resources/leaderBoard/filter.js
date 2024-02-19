 function filterFunction(){  //스트리머이름으로 필터
	 
	 var input, filter, table, tr, td, i, txtValue;
	 
	 input = document.getElementById("myInput");
	 filter = input.value.toUpperCase();
	 table = document.getElementsByClassName("rank-table")[0];
	 tr = table.getElementsByTagName("tr");
	 
	 
	 for(i = 0; i < tr.length; i++){
		 
		 td = tr[i].getElementsByTagName('td')[1];
		 
		 if(td){
			 txtValue = td.textContent || td.innerText;
			 
			 if(txtValue.toUpperCase().indexOf(filter) > -1){
				 tr[i].style.display = "";
			 } else {
				 tr[i].style.display = "none";
			 }
		 }
		
		 }
		 
		 
	 }//filterFunction
	 
	 
	 
function selectFunction(){  //카테고리로 필터
	
	var selected, filter, table, tr, td, i, selectValue;
	
	//다른 필터의 input 초기화
	document.getElementById("myInput").value="";
	document.getElementById("titleInput").value="";
	
	//필터링하기
	selected = document.getElementById("categorySelect");
	filter = selected.value.toUpperCase();
	table = document.getElementsByClassName("rank-table")[0];
	tr = table.getElementsByTagName("tr");
	
	for(i=0; i < tr.length; i++){
		td = tr[i].getElementsByTagName('td')[4];
		
		if(td){
			selectValue = td.textContent || td.innerText;
			
			if(filter === "" || selectValue.toUpperCase().indexOf(filter) > -1){
				tr[i].style.display = "";
				
			}else{
				tr[i].style.display = "none";
			}
		}//if
	}//for
	
	//필터링 메서드 재실행 -> 결과 업데이트
	filterFunction();
	filterTitleFunction();
	
}//selectFunction

 function filterTitleFunction(){  //방송이름으로 필터
	 
	 var input, filter, table, tr, td, i, txtValue;
	 
	 input = document.getElementById("titleInput");
	 filter = input.value.toUpperCase();
	 table = document.getElementsByClassName("rank-table")[0];
	 tr = table.getElementsByTagName("tr");
	 
	 
	 for(i = 0; i < tr.length; i++){
		 
		 td = tr[i].getElementsByTagName('td')[2];
		 
		 if(td){
			 txtValue = td.textContent || td.innerText;
			 
			 if(filter === "" || txtValue.toUpperCase().indexOf(filter) > -1){
				 tr[i].style.display = "";
			 } else {
				 tr[i].style.display = "none";
			 }
		 }
		
		 }
	 }//filterTitleFunction

	 
 