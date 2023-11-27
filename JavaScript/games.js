let menu=document.getElementById("menu") /*recup element html*/
let zone=document.getElementById("gameZone")

/* definit fonctions*/

function menuChange() {
    switch(menu.value)  {
        case"1":
            fairNumber()
            break
        default:
            reset ()
            break

    }
}
    
    function reset () {
        zone.innerHTML=""

    }

    function fairNumber() {

        reset()

        zone.innerHTML="<h2>Bon jeu mon gâté!</h2>"


        let randomTarget=Math.floor(Math.random()*100)+1
        console.log(randomTarget)
        let count=0
        let playerInput=document.createElement("input")
        playerInput.setAttribute("type", "text")
        playerInput.setAttribute("id", "playerInput")
        playerInput.setAttribute("placeholder", "Devine mon ptit zizitop3000")
        
        let inputLabel=document.createElement("label")
        inputLabel.setAttribute("for", "playerInput")
        inputLabel.innerHTML="devine le chiffre entre 1 et 100 poto"
        let submitButton=document.createElement("button")
        submitButton.innerHTML="valide man pote"
        submitButton.addEventListener("click", compareNumber)

        
        zone.appendChild(inputLabel)
        zone.appendChild(playerInput)
        zone.appendChild(submitButton)

        function compareNumber () {
                console.log("check")
                count++

                let userNumber=parseInt(playerInput.value)
                let message=`coup n°${count} - proposition ${userNumber} -`
                if (isNaN(userNumber)) {
                        message="il faut un chiffre frérot tu crois arnaquer qui là"
                    }  
                    else if(randomTarget<userNumber) {
                        message+="trop grand l'équipage"
                    }
                    else if (randomTarget>userNumber) {
                        message+="trop petit man poteeee aaaa"
                    } 
                    else {
                        message+=`Au nom c'est ça, t'a trouvé en ${count} coups mon bg à la crème anglaise`
                    }

                    let newMessage=document.createElement("p")
                    newMessage.innerHTML=message
                    zone.appendChild(newMessage)
                    return true

        }
    
    }

    
    /*if(menu.value=="0") {
        zone.style.backgroundColor="darkred"
    }
    else if (menu.value=="1")
        zone.style.backgroundColor="rgb(155, 0, 31)"*/


/*on configure les events*/

menu.addEventListener("change", menuChange)

