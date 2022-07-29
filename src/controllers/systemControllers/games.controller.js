const controller = {}
const connection = require('../../database')
const redirectPath = '/home'
const nodemailer = require('nodemailer')

controller.renderGames = async (req, res) => {
    res.render('system/games.hbs')
}

controller.renderQuiz = async (req, res) => {
    res.render('components/gamesComponents/quiz.hbs')
}

controller.renderCards = async (req, res) => {
    res.render('components/gamesComponents/memoryCard.hbs')
}

module.exports = controller