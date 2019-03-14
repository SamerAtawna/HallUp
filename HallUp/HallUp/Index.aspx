<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HallUp.Index" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"  lang="he" dir="rtl">
   <head runat="server">
      <title>hallUp</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <script
         src="https://code.jquery.com/jquery-3.3.1.js"
         integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
         crossorigin="anonymous"></script>
      <link rel="stylesheet" type="text/css" href="./Style/Animations.css">
      <link rel="stylesheet" type="text/css" href="./Style/Imports.css">
      <link rel="stylesheet" type="text/css" href="./Style/keypad.css">
      <link rel="stylesheet" type="text/css" href="./Style/style.css">
   </head>
   <body>
      <form id="AdminForm" runat="server">
         <div class="main">
            <div class="modal">
               <div class="coupleNames"> <!--First View Begin -->
                  Yosi <br>Shiran
               </div>
               <div class="mealBtn">
                  <a href="#" onclick="gotoMeals()" class="BUTTON_HCW">בחירת מנה</a>
               </div>         <!--First View End -->
               <div class="identify"> <!--Second View Begin -->
                  <div class="keypad">
                     <h2>  מספר פלאפון</h2>
                     <div class="containerKeypad">
                        <div class="output">
                           <asp:TextBox ID="phoneNum" runat="server"></asp:TextBox>
                        </div>
                        <div class="row1">
                           <input type=button value=1 onclick="keypad.addNum(this.value)" />
                           <input type=button value=2 onclick="keypad.addNum(this.value)" />
                           <input type=button value=3 onclick="keypad.addNum(this.value)" />
                        </div>
                        <div class="row2">
                           <input type=button value=4 onclick="keypad.addNum(this.value)" />
                           <input type=button value=5 onclick="keypad.addNum(this.value)" />
                           <input type=button value=6 onclick="keypad.addNum(this.value)" />
                        </div>
                        <div class="row3">
                           <input type=button value=7 onclick="keypad.addNum(this.value)" />
                           <input type=button value=8 onclick="keypad.addNum(this.value)" />
                           <input type=button value=9 onclick="keypad.addNum(this.value)" />
                        </div>
                        <div class="row4">
                           <input type=button value="איפוס" onclick="keypad.clearKeypad()" />
                           <input type=button value=0 onclick="keypad.addNum(this.value)" />
                           <input type=button value="מחיקה" onclick="keypad.delNum()" />
                        </div>
                     </div>
                  </div>
                  <div class="devider">
                     או
                  </div>
                  <div class="byName">
                     <h2>הקלד שם</h2>
                     <div class="nameEnter">
                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
                     </div>
                  </div>
               </div>
               <div id="keyb"></div>
            </div> <!--Second View End -->
         </div>
         <script src="./Scripts/Functions.js"></script>
         <script src="./Scripts/Transitions.js"></script>
      </form>
   </body>
</html>