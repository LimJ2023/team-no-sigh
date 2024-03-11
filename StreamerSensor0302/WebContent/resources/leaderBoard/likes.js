function toggleHeart(rankPlace, streamerId, categoryId){
 console.log("toggleHeart function called")
	var heartImage = document.getElementById('heart-' + rankPlace);
	console.log(heartImage.src)
	
	var imageName = heartImage.src.split('/').pop();
	if(imageName === 'empty_heart.png'){
		heartImage.src = heartImage.src.replace('empty_heart.png', 'green_heart.png');
		
		var xhr = new XMLHttpRequest();
		xhr.open('POST', '/addLike', true);
		xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
		xhr.onload = function(){
			if(this.status == 200){
				console.log('adding favorites...');
			}else {
				console.error('Error occurred');
			}
		 };

        xhr.send(`userId=${encodeURIComponent(userId)}&streamerId=${encodeURIComponent(streamerId)}&categoryId=${encodeURIComponent(categoryId)}`);
    }
}