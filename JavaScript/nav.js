let navButton=document.getElementById("button1")
let nav=document.getElementById("navOG")
let main=document.getElementById("awe")
let isHidden=true

function moveNav (){
    if(isHidden) {
    nav.style.transform="translateX(20vw)"
    main.style.width="80vw"
    main.style.left="20vw"
    isHidden=false} else {
    nav.style.transform="translateX(-20vw)"
    main.style.left="-0vw"
    main.style.width="100vw"
    isHidden=true
}}



    






navButton.addEventListener("click", moveNav)

/*submitButton.innerHTML=">"

zone.appendChild(navButton)

navButton.addEventListener("click", function() {

alert("ekip");

});*/