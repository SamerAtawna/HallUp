//Navigating between different Views

$(".containerKeypad").css("display","none");
        
function gotoMeals(){
$(".main").css("animation-play-state","running");
$(".coupleNames").slideUp();
$(".mealBtn").slideUp();
$(".keypad").css("display","flex");
$(".containerKeypad").slideDown();

}