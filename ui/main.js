console.log('Loaded!');


var element = document.getElementId('main-text');
element.innerHTML='New value';

var img=document.getElementById('dream');

function moveRight()
{
    marginleft=marginleft+10;
    img.style.marginLeft = marginLeft='px';
    
}
img.onclick=function()
{
    var integral = setInterval(moveRight, 100);
}