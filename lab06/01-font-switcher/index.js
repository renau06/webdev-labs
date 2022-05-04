const makeBigger = () => {
    //console.log(window.getComputedStyle(document.getElementById("content")).fontSize);
    var content = document.querySelector(".content")
    var header= document.querySelector("h1");
    var content_font_size=  window.getComputedStyle(content).fontSize;
    var header_font_size = window.getComputedStyle(header).fontSize;
    console.log(content_font_size);
    console.log(header_font_size);
    document.querySelector(".content").style.fontSize= (parseFloat(content_font_size)+4) + 'px';
    
    document.querySelector("h1").style.fontSize = (parseFloat(header_font_size)+4)+'px';
   
};

const makeSmaller = () => {
    var content = document.querySelector(".content")
    var header= document.querySelector("h1");
    var content_font_size=  window.getComputedStyle(content).fontSize;
    var header_font_size = window.getComputedStyle(header).fontSize;
    console.log(content_font_size);
    console.log(header_font_size);
    document.querySelector(".content").style.fontSize= (parseFloat(content_font_size)-4) + 'px';
    
    document.querySelector("h1").style.fontSize = (parseFloat(header_font_size)-4)+'px';
};


document.querySelector("#a1").addEventListener('click', makeBigger);
document.querySelector("#a2").addEventListener('click', makeSmaller);

