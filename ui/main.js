console.log('Loaded!');


var element = document.getElementId('main-text');
element.innerHTML='New value';

//Move the image
var img=document.getElementById('dream');

function moveRight()
{
    marginleft=marginleft+10;
    img.style.marginLeft = marginLeft='px';
    
}
img.onclick=function()
{
    var interval = setInterval(moveRight, 100);
}