const controller = {}
const connection = require('../../database')
const redirectPath = '/gallery'

controller.renderMusic = async (req, res) => {
    const song = await connection.query('select  * from music')
    res.render('system/music.hbs', { song })
}

module.exports = controller