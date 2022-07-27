const controller = {}
const connection = require('../../database')
const redirectPath = '/gallery'

controller.renderGallery = async (req, res) => {
    const pics = await connection.query('select  * from pics')
    res.render('system/gallery.hbs', { pics })
}

module.exports = controller