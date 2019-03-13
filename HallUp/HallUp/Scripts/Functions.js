var number="";


var keypad={
 addNum(a){
    number+=a;
    $("#phoneNum").val(number);
},
 delNum(){
 
    number=number.slice(0,-1)
  
    $("#phoneNum").val(number);
},
 clearKeypad(){
    number="";
    $("#phoneNum").val(number);

}

}
var keyboard={
  
        row1:['ק','ר','א','ט','ו','ן','ם','פ'],
        row2:['ש','ד','ג','כ','ע','י','ח','ל','ך','ף'],
        row3:['ז','ס','ב','ה','נ','מ','צ','ת','ץ'],
        pressed:function (keyPress, cls){
            if(!(keyPress=='backspace')){
            $('.'+cls).css("animation-play-state","running");
            document.getElementById("name").value+=keyPress;
                setTimeout(function(){
                    $('.'+cls).css("animation","none");
                },500)
        
            $('.'+cls).css("animation","animateKey 0.3s");

                }
                else{
                      output=document.getElementById('name').value;
                      newName=output.substring(output.length-1,0 );
                      document.getElementById('name').value=newName;

                }
        }
}
keyOut="";
c=1;
classId=0;
for(r in keyboard){

keyOut+=`<div class=k${c}>`;
for(i=0;i<keyboard[r].length-2;i++){
    
    keyOut+=`<div class=keyP${classId} onclick=keyboard.pressed('${keyboard[r][i]}','keyP${classId}')>${keyboard[r][i]}</div>`;
    if(i==5 && keyboard[r].length==8){
        keyOut+="<div class='backspace' onclick=keyboard.pressed('backspace')>\33</div>";
    }
 classId++;
}
keyOut+="</div>";
c++;
document.getElementById("keyb").innerHTML=keyOut;

    
}


