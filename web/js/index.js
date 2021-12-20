/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var playing = true;
var mySlide = document.getElementById('mySlides');
var myIndex = 0;
var playBtn = document.getElementById('PlayBtn');
var play = document.getElementById('Play');

function carousel() {
    var i;
    var x = document.getElementsByClassName('imgList');
    
    var listImg = document.getElementsByClassName('imgList2');
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
        listImg[i].style.border = "2px solid #ffffff";
    }
    myIndex++;
    if (myIndex > x.length) {
        myIndex = 1;
    }
    x[myIndex - 1].style.display = "block";
    listImg[myIndex - 1].style.border = "2px solid #000000";
}

function pauseSlideshow() {
    playing = false;
    clearInterval(slideInterval);
    playBtn.style.display = "block";
}

function playSlideshow() {
    playing = true;
    slideInterval = setInterval(carousel, 2000);
    playBtn.style.display = "none";
}

mySlide.onclick = function () {
    if (playing === true) {
        pauseSlideshow();
    } 
};

playBtn.onclick = function () {
    if (playing === false) {
        playSlideshow();
    } 
};

carousel();
playSlideshow();