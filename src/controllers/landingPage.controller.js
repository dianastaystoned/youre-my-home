const connection = require('../database')
const controller = {}

controller.renderLanding = async (req, res)=>{
    res.render('index.hbs')
  }

 module.exports = controller