 // var appetizer_prices = new Array();
 // appetizer_prices["Feeds1"]=8;
 // appetizer_prices["Feeds2"]=6;
 // appetizer_prices["Feeds3"]=17;
 // appetizer_prices["Feeds4"]=15;
 //
 // var main_course_prices= new Array();
 // main_course_prices["Feeds5"]=12;
 // main_course_prices["Feeds6"]=16;
 // main_course_prices["Feeds7"]=15;
 // main_course_prices["Feeds8"]=16;
 //
 // var dessert_prices= new Array();
 // dessert_prices["Feeds9"]=9;
 // dessert_prices["Feeds10"]=9;
 // dessert_prices["Feeds11"]=9;
 // dessert_prices["Feeds12"]=9;
 //
 // var red_wine_prices= new Array();
 // red_wine_prices["Feeds13"]=8;
 // red_wine_prices["Feeds14"]=10;
 // red_wine_prices["Feeds15"]=6;
 // red_wine_prices["Feeds16"]=16;

 // <%= f.label :food1 %>
 // <%= f.collection_select :menu_item_id, MenuItem.all, :id, :food1 %>
 //
 // <%= f.label :price1 %>
 // <%= f.collection_select :menu_item_id, MenuItem.all, :id, :price1, html: {class: "selectedfood2"} %>

// document.getElementsByClassName("selectedAppetizer").addEventListener('click', function(){
//   document.divobj.style.display= calculateTotal();
// });
//
// document.getElementsByClassName("selectedAppetizer1").addEventListener('click', function(){
//   document.divobj.style.display= calculateTotal();
// });

function calculateFood(){

    var valueApp=0;
    // var valueMC=0;

    var valueFood = document.getElementsByClassName('selectedfood1').value;

    var features = new Array(valueFood.length);
    for (var i = 0; i < features.length; i++) {
      valueApp = parseInt(valueFood[i].innerHTML);
    }
    calculateFood = valueApp
    // valueMC = document.getElementsByClassName('selectedfood2').value;

    // var billPrice = parseInt(valueApp + valueMC);

    // divobj.style.display='block';

    // document.getElementById("bill").innerHTML = "Total Bill $"+billPrice;
    // console.log(billPrice);
    return calculateFood;
  };

  function calculateFoodOne(){


      var valueMC=0;

      var valueFood = document.getElementsByClassName('selectedfood2').value;

      // valueMC = document.getElementsByClassName('selectedfood2').value;
      var features = new Array(valueFood.length);
      for (var i = 0; i < features.length; i++) {
        valueFood = parseInt(valueFood[i].innerHTML)
      }calculateFoodOne = valueFood
      // var billPrice = parseInt(valueApp + valueMC);

      // divobj.style.display='block';

      // document.getElementById("bill").innerHTML = "Total Bill $"+billPrice;
      // console.log(billPrice);
      return calculateFoodOne;
); 
   // var priceOne=0;
   // var theForm = document.forms["menuform"];

    // getElementsByClassName('selectedAppetizer').value();
   // selectedAppetizer =
   // var priceOne=0;
   // get = document.getElementsByClassName('selectedAppetizer').value();
  //  return appetizerPrice;



      // var priceTwo=0;
      // var theForm = document.forms["menuform"];
      //  var mainCoursePrice = document.getElementsByClassName('selectedAppetizer1').value();;
      //  mainCoursePrice = document.getElementsByClassName('selectedAppetizer1').value();;

      //  for (var i = 0; i < selectedMainCourse.length; i++) {
      //    if (selectedMainCourse[i].checked) {
      //      mainCoursePrice = main_course_prices[selectedMainCourse.value];
      //      break;
      //    }
      //  }
      // return mainCoursePrice;

//
//  function getAppetizerPrice()
//  {
//      var appetizerPrice=0;
//      var theForm = document.forms["menuform"];
//      var selectedAppetizer= theForm.elements["selectedAppetizer"];
//
//      var appetizerPrice=0;
//      appetizerPrice = document.get(selectedAppetizer)
// }
//
// function getAppetizerPrice()
// {
//     var appetizerPrice=0;
//     var theForm = document.forms["menuform"];
//     var selectedAppetizer= theForm.elements["selectedAppetizer"];
//     for(var i = 0; i < selectedAppetizer.length; i++)
//     {
//         if(selectedAppetizer[i].checked)
//         {
//             appetizerPrice = appetizer_prices[selectedAppetizer[i].value];
//             break;
//         }
//     }
//     return appetizerPrice;
// }

// function getDessertPrice()
// {
//     var dessertPrice=0;
//     var theForm = document.forms["menuform"];
//     var selectedDessert = theForm.elements["selectedDessert"];
//     for (var i = 0; i < selectedDessert.length; i++) {
//       if (selectedDessert[i].checked) {
//         dessertPrice = dessert_prices[selectedDessert.value];
//         break;
//       }
//     }
//     return dessertPrice;
// }
// function getRedWinePrice(){
//   var redWinePrice=0;
//   var theForm = document.forms["menuform"];
//   var selectedRedWine = theForm.elements["selectedRedWine"];
//   for (var i = 0; i < selectedRedWine.length; i++) {
//     if (selectedRedWine[i].checked) {
//       redWinePrice = red_wine_prices[selectedRedWine.value];
//       break;
//     }
//   }
//   return redWinePrice;
// }

// var divobj = document.getElementById('totalPrice');

// function calculateTotal()
// {
//     // + getDessertPrice() + getRedWinePrice();
//     var billPrice = getAppetizerPrice() + getMainCoursePrice();
//     divobj.style.display='block';
//     divobj.innerHTML = "Total Bill $"+billPrice;
// }

function calculateTotal(){
    // + getDessertPrice() + getRedWinePrice();
    var billPrice = calculateFood + calculateFoodOne;
    document.getElementById("bill").innerHTML = billPrice;
};


function hideTotal()
{
    var divobj = document.getElementById('totalPrice');
    document.getElementById('bill').style.display='none';
};

// console.log("...hello world3");
// function calculateTip()
// {
//     console.log("it really works!!!!!!!!");
//     var amount = document.getElementById('amount').value;
//     var percentage = document.getElementById('percentage').value;
//     var tip = amount * (percentage / 100);
//     document.getElementById('tip').val(tip.toFixed(2));
//     document.getElementById('total').val(total.toFixed(2));
//     var total = Number(amount) + tip;
//     return true;
// }
// function calculateGrandTotal(){
//     var divobjtwo = document.getElementById('priceWithTip');
//     divobjtwo.style.display='block';
//     divobjtwo.innerHTML = "Grand Total of Bill $"+total;
//     // event.preventDefault();
//     return total;
// }
