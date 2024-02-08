const clickableItems = document.querySelectorAll('.carousel .item');

clickableItems.forEach(item => {
	item.addEventListener('click', function(){
		
		const targetRadioId = this.getAttribute('data-radio-target');
		
		const targetRadio = document.getElementById(targetRadioId);
		if(targetRadio){
			targetRadio.checked=true;
		}
	})
});
  
  