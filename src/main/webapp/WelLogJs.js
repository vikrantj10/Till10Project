let btn = document.getElementById("btn")
let showbtn = document.getElementById("showbtn")
showbtn.addEventListener("click",function(){
if(myProfile.style.display=="block")
{
   myProfile.style.display="none";
}
else
myProfile.style.display="block";
}
)
let editbtn = document.getElementById("editbtn")
editbtn.addEventListener("click",function(){
if(form.style.display=="block")
{
form.style.display="none";
}
else
form.style.display="block";
})

