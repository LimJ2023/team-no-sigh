function applyFilters(){
	resetFilters();
	filterByName();
	filterByTitle();
	filterByCategory();
}

function resetFilters(){
	var table = document.getElementsByClassName("rank-table")[0];
	var tr = table.getElementsByTagName("tr");
	
	for (var i = 1; i< tr.length; i++){
		tr[i].classList.remove('name-filter', 'title-filter', 'category-filter');
		tr[i].style.display = "";
	}
}

function filterByName(){
	var input = document.getElementById("myInput");
	var filter = input.value.toUpperCase();
	var table = document.getElementsByClassName("rank-table")[0];
	var tr = table.getElementsByTagName("tr");
	
	for(var i = 1; i < tr.length; i++){
		var td = tr[i].getElementsByTagName("td")[1];
		if(td){
			var txtValue = td.textContent || td.innerText;
			if(txtValue.toUpperCase().indexOf(filter) > -1 || filter === ""){
				if(!tr[i].classList.contains('title-filter') && !tr[i].classList.contains('category-filter')){
					tr[i].style.display = "";
				}
			}else{
				tr[i].classList.add('name-filter');
				tr[i].style.display = "none";
			}
		}
	}
}


function filterByTitle(){
	var input = document.getElementById("titleInput")
	var filter = input.value.toUpperCase();
	var table = document.getElementsByClassName("rank-table")[0];
	var tr = table.getElementsByTagName("tr");
	
	for (var i = 1; i < tr.length; i++) {
        if (tr[i].classList.contains('name-filter') || tr[i].classList.contains('category-filter')) {
			continue;
		}

        var td = tr[i].getElementsByTagName("td")[2];
        if (td) {
            var txtValue = td.textContent || td.innerText.toUpperCase();
            if (txtValue.toUpperCase().indexOf(filter) === -1) {
                tr[i].classList.add('title-filter');
                tr[i].style.display = "none";
            } else {
				tr[i].classList.remove('title-filter');
                if(!tr[i].classList.contains('name-filter') && !tr[i].classList.contains('category-filter')){
					tr[i].style.display = "";
				}
            }
        }
    }
}


function filterByCategory(){
	var select = document.getElementById("categorySelect");
	var filter = select.value.toUpperCase();
	var table = document.getElementsByClassName("rank-table")[0];
	var tr = table.getElementsByTagName("tr");
	
	for(var i= 1; i<tr.length; i++){
		tr[i].classList.remove('category-filter');
		if (tr[i].classList.contains('name-filter') || tr[i].classList.contains('title-filter')) continue;
		
		var td = tr[i].getElementsByTagName("td")[7];
		if(td) {
			var txtValue = td.textContent || td.innerText;
			if(txtValue.toUpperCase().indexOf(filter) === -1 && filter !== ""){
				tr[i].classList.add('category-filter');
				tr[i].style.display = "none";
			} else {
				tr[i].style.display = "";
			}
		}
	}
	
}


document.getElementById("myInput").onkeyup = applyFilters;
document.getElementById("titleInput").onkeyup = applyFilters;
document.getElementById("categorySelect").onchange = applyFilters;
