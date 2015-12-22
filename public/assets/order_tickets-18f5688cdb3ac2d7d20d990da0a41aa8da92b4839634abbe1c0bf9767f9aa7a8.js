console.log("...loaded");
 var appetizer_prices = new Array();
 appetizer_prices["Feeds1"]=8;
 appetizer_prices["Feeds2"]=6;
 appetizer_prices["Feeds3"]=17;
 appetizer_prices["Feeds4"]=15;

 var main_course_prices= new Array();
 main_course_prices["Feeds5"]=12;
 main_course_prices["Feeds6"]=16;
 main_course_prices["Feeds7"]=15;
 main_course_prices["Feeds8"]=16;

 var dessert_prices= new Array();
 dessert_prices["Feeds9"]=9;
 dessert_prices["Feeds10"]=9;
 dessert_prices["Feeds11"]=9;
 dessert_prices["Feeds12"]=9;

 var red_wine_prices= new Array();
 red_wine_prices["Feeds13"]=8;
 red_wine_prices["Feeds14"]=10;
 red_wine_prices["Feeds15"]=6;
 red_wine_prices["Feeds16"]=16;


function getAppetizerPrice()
{
    var appetizerPrice=0;
    var theForm = document.forms["menuform"];
    var selectedAppetizer= theForm.elements["selectedAppetizer"];
    for(var i = 0; i < selectedAppetizer.length; i++)
    {
        if(selectedAppetizer[i].checked)
        {
            appetizerPrice = appetizer_prices[selectedAppetizer[i].value];
            break;
        }
    }
    return appetizerPrice;
}
function getMainCoursePrice()
{
    var mainCoursePrice=0;
    var theForm = document.forms["menuform"];
     var selectedMainCourse = theForm.elements["selectedMainCourse"];

     for (var i = 0; i < selectedMainCourse.length; i++) {

       if (selectedMainCourse[i].checked) {
         mainCoursePrice = main_course_prices[selectedMainCourse.value];
         break;
       }
     }
    return mainCoursePrice;
}
function getDessertPrice()
{
    var dessertPrice=0;
    var theForm = document.forms["menuform"];
    var selectedDessert = theForm.elements["selectedDessert"];
    for (var i = 0; i < selectedDessert.length; i++) {
      if (selectedDessert[i].checked) {
        dessertPrice = dessert_prices[selectedDessert.value];
        break;
      }
    }
    return dessertPrice;
}

function getRedWinePrice(){
  var redWinePrice=0;
  var theForm = document.forms["menuform"];
  var selectedRedWine = theForm.elements["selectedRedWine"];
  for (var i = 0; i < selectedRedWine.length; i++) {
    if (selectedRedWine[i].checked) {
      redWinePrice = red_wine_prices[selectedRedWine.value];
      break;
    }
  }
  return redWinePrice;
}

function calculateTotal()
{
      var billPrice = getAppetizerPrice() + getMainCoursePrice() + getDessertPrice() + getRedWinePrice();

    var divobj = document.getElementById('totalPrice');
    divobj.style.display='block';
    divobj.innerHTML = "Total Price For the Cake $"+billPrice;

}

function hideTotal()
{
    var divobj = document.getElementById('totalPrice');
    divobj.style.display='none';
}
