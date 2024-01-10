/*Récupération des élèments html*/

let menu = document.getElementById("menu")
let zone = document.getElementById("gameZone")

/*définit les functions*/

function menuChange() {
    switch(menu.value) {
        case '1':
            fairNumber()
            break
        case '2':
            ticTacDoe()
            break
        default : 
            reset()
            break
    }  
}

function reset() {
    zone.innerHTML = ""
}

/**
 * Cette fonction déclenche le jeu du juste nomnbre
 */
function fairNumber() {
    /*initialiser la zone*/
    reset()
    zone.innerHTML = "<h2>Le jeu du juste nombre</h2>"

    /*on initialise les variables*/
    let randomTarget = Math.floor(Math.random() * 100) +1
    console.log(randomTarget)
    let count = 0
    let isOver = false
    let userNumber = null
    let message = ""

    let inputLine = document.createElement('div')
    inputLine.classList.add('inputLine')
    zone.appendChild(inputLine)

    /*on ajoute des élèments html*/
    let playerInput = document.createElement("input")
    playerInput.setAttribute('type', 'text')
    playerInput.setAttribute('id', 'playerInput')
    playerInput.setAttribute('placeholder', 'Tapez votre proposition')

    let inputLabel = document.createElement("label")
    inputLabel.setAttribute('for', 'playerInput')
    inputLabel.innerHTML = "Devinez un nombre entre 1 et 100"

    let submitButton = document.createElement("button")
    submitButton.innerHTML ="Valider"
    submitButton.addEventListener('click', compareNumber)

    inputLine.appendChild(inputLabel)
    inputLine.appendChild(playerInput)
    inputLine.appendChild(submitButton)

    let messageZone = document.createElement('div')
    zone.appendChild(messageZone)
    /*le fonctionnement du jeu*/
    function compareNumber() {       
        
        count++

        userNumber = parseInt(playerInput.value)
        message = `coup n°${count} - proposition : ${userNumber} - `
      
        if(isNaN(userNumber)){
            message = "il faut entrer un nombre"
        }else if(userNumber > randomTarget) {
            message += "C'est trop grand"
        } else if (userNumber < randomTarget){
            message += "C'est trop petit"
        } else {
            message += `bravo vous avez trouvé`
            isOver = true
        }

        let newMessage = document.createElement('p')
        newMessage.classList.add("fairLine")
        newMessage.innerHTML = message
        messageZone.appendChild(newMessage)

        if(isOver) {
            zone.removeChild(inputLine)
            let resetButton = document.createElement('button')
            resetButton.innerHTML ="Recommencer"
            resetButton.addEventListener('click', fairNumber)

            zone.appendChild(resetButton)
        }
        
    }

}

function ticTacDoe() {
    reset()
    console.log('jeu du morpion')

    let squares=[]

    let infoPanel = document.createElement('div')
    infoPanel.classList.add('infoPanel')

    let grid = document.createElement('div')
    grid.classList.add('grid')

    zone.appendChild(infoPanel)
    zone.appendChild(grid)
    zone.classList.add('ttdZone')

    for(let i=0; i<9; i++) {
        let square=document.createElement('div')
        square.classList.add('square')
        grid.appendChild(square)
        squares.push(square)
    }

    for(let i=0; i<9; i++) {
        console.log(squares[i])
        squares[i].addEventListener('click', squareClick.bind(squares[i]))
    }

    console.log(squares)

    function squareClick() {
        console.log('click')
        this.style.backgroundImage='url("../assets/rouge.png")'
    }

}
/*on configure les évènements*/

menu.addEventListener("change", menuChange)