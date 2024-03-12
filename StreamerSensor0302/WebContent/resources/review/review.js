function generateStars(rating) {
    let starsHTML = '';

    // 별의 최대 개수
    const maxStars = 5;

    // rating 값에 따라 별의 개수를 결정
    const numberOfStars = Math.min(Math.max(0, rating), maxStars);

    // 별의 HTML을 생성
    for (let i = 0; i < numberOfStars; i++) {
        starsHTML += '<i class="bx bxs-star"></i>';
    }

    return starsHTML;
}