window.addEventListener('load',function(){ //로드는 키면 즉시 실행됨
   var carousels=document.getElementsByClassName('carousel'); //클래스 이름 캐러샐로 잡아옴
   							/*클래스의 이름이 캐러샐인 애를 가져와. carousels이라는 변수에 저장해줘
   							반환 값은 배열임. (carousel 클래스에 ul li 쭉 있음)*/
   
      //carousel 클래스의 모든 HTML 요소를 가져와 [배열과 유사한 객체]를 반환, carousels에 저장
   //캐러셀 이벤트를 등록하는 로직
   for(var i=0;i<carousels.length;i++){
	   	/*요소의 수 만큼 돌려볼게*/
      addEventToCarousel(carousels[i]);
      					/*해당 참조를 가지고 와서, addEventToCarousel 에 매개변수/인자/파라미터 로 전달*/
   }
});

function addEventToCarousel(carouselElem){ /*매개변수 이름은 상관 x*/
					/*컴파일러는 타입이 뭐든 전달할때 data1 data2 이런거로 전달.
					js 는 어차피 var 니까 타입은 안 써 주고,,, carouselElem = carousels[i]*/
      //위에서 받은, carousel 클래스의 HTML 요소들을 하나 하나씩 매개변수로 이용해서 함수 실행
   var ulElem=carouselElem.querySelector('ul'); //querySelector로 추출
   		/*'ul'을 잡아와서 ulElem 에 넣을거야 (첫번째로 발견되는 ul)*/
   
      //ul 선택자에 해당하는 첫번째! HTML 요소를 가져옴 -> ulElem에 할당
   var liElems=ulElem.querySelectorAll('li');
   		/*거기서 li들을 모두다(All)잡아서 liElems에 넣을거야*/
   
      //li 선택자에 해당하는 모든 요소를 가져와서 liElems에 유사 배열 객체로 할당/반환
   
   	/*우리가 슬라이드 사진이 4개 있엇음. 이 모든 슬라이드를 선택해줘~ 임*/
   
   
   //너비 값 조정
   var liWidth=liElems[0].clientWidth; 
                     //요소의 내부 너비를 얻을 때 사용(=패딩, 보더 등 고려하지 않음)
      //liWidth=img_mountain1.clientWidth (내부너비)
   var adjustedWidth=liElems.length*liWidth;
      //adjustedWidth = liElems의 길이(=4) * mountain의 내부너비(대충630아님?)
   ulElem.style.width=adjustedWidth;
      //ulElem 너비는= mountain*4로 새로 지정
      //...이거 왜 필요해요??

   
   //슬라이드 버튼 이벤트 등록
   var slideButtons=carouselElem.querySelectorAll('.slide');
   	/*slide 인 애들을 모두 선택- 가져와줘*/
   	/*각가의 슬라이드 버튼에 클릭 이벤트 리스너 추가*/
      //i번째 carousels 클래스 요소 중 슬라이드 클래스를 slideButtons에 넣음
      //근데 해당 carousels 클래스 요소에 slide 클래스가 없다면 빈 NodeList 가 반환되고,for문은 돌아가지 않음
   for(var i=0;i<slideButtons.length; i++){
      //만약 해당하는 요소가(.slide)가 있다면 포문이 그 만큼 돌아감
      slideButtons[i].addEventListener('click',createListenerSlide(carouselElem));
      /*각각의 slide 들에게 이벤트를 주겠다. 클릭 이벤트.*/
         //slideButtons에 클릭 시 발생하는 이벤트를 추가
         //받아온 carouselElem 요소를 매개변수로, createListenerSlide 함수를 실행
         //carouselElem = carousels[i]
   }
}


function createListenerSlide(carouselElem){
   return function(event){
     	
      //이벤트가 발생되면 이 함수를 반환할거에요
         //매개변수 event = 이벤트가 발생했을때 브라우저가 자동으로 생성하는 객체
      var clickedButton=event.currentTarget;
                        //이벤트 핸들러가 등록된 요소
            //어떤 요소를 클릭했을 때 그 클릭된 요소를 clickedButton 요소에 저장
      
      //값 가져오기
      var liElems=carouselElem.querySelectorAll('li');
      /*슬라이드 요소를 저장해*/
      var liCount=liElems.length;
      /*length = 길이 = 총 슬라이드의 갯수   를 저장해*/
      var currentIndex=carouselElem.attributes.data.value;
      /*위치를 저장해*/
      /*각각의 변수에 할당*/
   
      
      
      //슬라이드 버튼 체크
      /*현재 표시된 슬라이드의 인덱스가 마지막 슬라이드의 인덱스보다 작을때*/
      if(clickedButton.className.includes('right') && currentIndex < (liCount-1)){
            //무언가를 클릭하였을 때, className 에 right가 포함이 되어있고!!)&&_
                  //현재Index 가 liCount -1 보다 작을 경우에!
         currentIndex ++;
         console.log("플러스요");
            //현재 Index를 하나 추가해주십쇼(사진 다음장!)
         scrollDiv(carouselElem, currentIndex);
            //그리고 carouselElem 과 현재Index(1추가된) 것을 매개로 아래 scrollDiv 함수를 실행해줘
      
      	/*현재 표시된 슬라이드의 인덱스가 0보다 크면*/
      }else if(clickedButton.className.includes('left') && currentIndex > 0){
            //만약 클릭한 것의 className에 left가 들어가 있고,
               //현재인덱스가 0보다 클 경우(=0인 경우에는 움직이지 말거라!)
         currentIndex --;
            //현재 인덱스를 하나 빼줘요
         scrollDiv(carouselElem, currentIndex);
            //뺴고, carouselElem과 현재Index 를 매개변수로 scrollDiv 함수를 실행해주십쇼
      }
      
      //인디케이터 업데이트
      updateIndicator(carouselElem, currentIndex);
      //슬라이드 버튼 보여줌 여부 업데이트
      updateSlideButtonVisible(carouselElem, currentIndex, liCount);
      
      //새롭게 보여지는 이미지 인덱스 값을 현제 data 값으로 업데이트
      carouselElem.attributes.data.value = currentIndex;
      
   }
}

/*다음 이미지를 보여주는 함수 */
function scrollDiv(carouselElem, nextIndex){
      //위에서 전달한 건 currentIndex 인데, ++ 이나 --했으니까 걍 nextIndex라?해?
      console.log("scrollDiv 작동 ㅇㅋ")
   var scrollable=carouselElem.querySelector('div');
   console.log('scrollable:', scrollable);
      //carouselElem 에서 div 가 해당되는 첫번째! HTML 요소를 가져오십쇼. 그건 scrollable이 쓰겠다
   var liWidth=scrollable.clientWidth;
   var newLeft=liWidth * nextIndex;  //600*3=1800 //스크롤div 스크롤을 해줄때 이걸 하겠다...
   console.log(newLeft);
   
   
   scrollable.scrollTo({left: newLeft, behavior: 'smooth'});
/*   scrollable.addEventListener('scroll', function() {
  console.log('스크롤 이벤트 발생!');
});*/
               //
   //scrollTo - 레퍼런스(정해진함수)
   //scrollTo = window.scrollTo({top, left, behavior})
   //객체의 left 속성에 newLeft 값을 할당한다(:)는 뜻.
   //그러니까 이거는 scrollable 을 왼쪽(newLeft)로 부드럽게(smooth)이동시킨다 는 것?
}


//---사진 밑에 동그란(사진위치) 알려주는 것 설정 업데이트 해주는 함수---
/*이미지에 해당하는 인디케이터(하단의 동그란 점) 업데이트 하는 함수*/
function updateIndicator(carouselElem, currentIndex) {
   var indicators = carouselElem.querySelectorAll('footer > div');
   for (var i = 0; i < indicators.length; i++) {
      if (currentIndex == i) {
         indicators[i].className = 'active';
         /*일치할 때 파란색으로 해줘*/
         /*첫번째 거 볼때 첫번째 파란색, 두번째 거 볼때 두번째 파란색*/
      } else {
         indicators[i].className = '';
         /*일치하지않으면 빈문자열 주겠다 = 제거하겠다*/
      }
   }
}


//---그...ㅁㄴ 왼쪽 오른쪽 버튼 보이고 말고를 설정해주는 함수---
/*현재 이미지가 처음이면 왼쪽 버튼이면 숨기고, 마지막 이미지면 오른쪽 버튼은 숨김*/
function updateSlideButtonVisible(carouselElem, currentIndex, liCount){
   var left=carouselElem.querySelector('.slide-left');
   var right=carouselElem.querySelector('.slide-right');
   
   if(currentIndex > 0){
      left.style.display='block';
   }else{
      left.style.display='none';
   }
   
   if(currentIndex <liCount - 1){
      right.style.display='block';
   }else{
      right.style.display='none';
   }
}








