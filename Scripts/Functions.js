var number="";
function addNum(a){
    number+=a;
    $("#phoneNum").val(number);
}
function delNum(){
 
    number=number.slice(0,-1)
  
    $("#phoneNum").val(number);
}
function clearKeypad(){
    number="";
    $("#phoneNum").val(number);

}