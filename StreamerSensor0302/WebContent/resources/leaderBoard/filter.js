

function filterFunction() {

	var input, filter, table, tr, td, i, txtValue;

	input = document.getElementById("myInput");
	filter = input.value.toUpperCase();
	table = document.getElementsByClassName("rank-table")[0];
	tr = table.getElementsByTagName("tr");


	for (i = 0; i < tr.length; i++) {

		td = tr[i].getElementsByTagName('td')[1];

		if (td) {
			txtValue = td.textContent || td.innerText;

			if (txtValue.toUpperCase().indexOf(filter) > -1) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
			}
		}

	}
}//filterFunction


//03030303030303
function selectFunction() {

	var selected, filter, table, tr, td, i, selectValue;

	selected = document.getElementById("categorySelect");
	filter = selected.value.toUpperCase();
	table = document.getElementsByClassName("rank-table")[0];
	tr = table.getElementsByTagName("tr");

	for (i = 0; i < tr.length; i++) {
		td = tr[i].getElementsByTagName('td')[7];

		if (td) {
			selectValue = td.textContent || td.innerText;

			if (selectValue.toUpperCase().indexOf(filter) > -1) {
				tr[i].style.display = "";

			} else {
				tr[i].style.display = "none";
			}
		}
	}

}




function filterTitleFunction() {

	var input, filter, table, tr, td, i, txtValue;

	input = document.getElementById("titleInput");
	filter = input.value.toUpperCase();
	table = document.getElementsByClassName("rank-table")[0];
	tr = table.getElementsByTagName("tr");


	for (i = 0; i < tr.length; i++) {

		td = tr[i].getElementsByTagName('td')[2];

		if (td) {
			txtValue = td.textContent || td.innerText;

			if (txtValue.toUpperCase().indexOf(filter) > -1) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
			}
		}

	}
}//filterTitleFunction


//=======================================

//=====0304 이지수 : 버튼(정렬용) 테스트

function toggleSortAvgViewer(){
	
	var currentSortOrder = document.getElementById('currentSortOrder').value;
	var newSortOrder = currentSortOrder === 'asc' ? 'desc' : 'asc';
	document.getElementById('currentSortOrder').value = newSortOrder;
	this.form.submit();
	
	
}


