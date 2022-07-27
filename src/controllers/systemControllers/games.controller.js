const controller = {}
const connection = require('../../database')
const redirectPath = '/home'
const nodemailer = require('nodemailer')

controller.renderGames = async (req, res) => {
    res.render('system/games.hbs')
}

module.exports = controller