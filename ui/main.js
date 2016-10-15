console.log('Loaded!');


var element = document.getElementById('main-text');
element.innerHTML = 'New value';

//Move the image
var img=document.getElementById('dream');

function moveRight()
{
    marginLeft = marginLeft+10;
    img.style.marginLeft = marginLeft='px';
    
}
img.onclick=function()
{
    var interval = setInterval(moveRight, 100);
}