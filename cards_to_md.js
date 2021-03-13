const fs = require('fs')
const cardsData = require('./cards')

const deckList = Object.keys(cardsData)
const deck = (deckName) => cardsData[deckName]

const arrayToCardText = (arr) => {
  return `
${arr[0]}
---
${arr[1]}
  `
}

const deckToCards = (someDeck) => {
  const [head, ...tail] = someDeck
  if(head === undefined){
    return
  }else {
    console.log(arrayToCardText(head))
    return deckToCards(tail)
  }
}

deckToCards(deck(deckList[0]))