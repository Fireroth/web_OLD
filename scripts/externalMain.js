var filter="none";
document.getElementById("all").style.filter = filter;

console.log("%cHi!", "color:#EB5E28; font-size: 50px; text-shadow: 3px 3px #3f3e3b , 6px 6px #302f2f , 9px 9px #181818 ;");





function getRandomColor() {
  var letters = '0123456789ABCDEF';
  var color = '#';
  for (var i = 0; i < 6; i++) {
    color += letters[Math.floor(Math.random() * 16)];
  }
  return color;
}

function setRandomColor() {
  $("#footer").css("color", getRandomColor());
  console.log("Color of footer was set to "+getRandomColor());
}