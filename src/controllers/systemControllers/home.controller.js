const controller = {}
const connection = require('../../database')
const redirectPath = '/home'
const nodemailer = require('nodemailer')

controller.renderPics = async (req, res) => {
    const pics = await connection.query('select  * from pics limit 6')
    res.render('system/home.hbs', { pics })
}

controller.sendEmail = async (req, res) => {
    const { fullname, email, subject, message } = req.body;
    contentHTML = `

        User Information
            Full name: ${fullname}
            User Email: ${email}
    `;
    let transporter = nodemailer.createTransport({
        service: 'gmail',
        auth: {
            user: 'dtr.3838@gmail.com',
            pass:'xctzvsbtpychxgcf'
        }
    });

    var details = {
        from: `You are my home <dtr.3838@gmail.com'>`,
        to: 'youareemyhome@gmail.com',
        subject: `${subject}`,
        text: `${message}` + contentHTML
    };
    transporter.sendMail(details, function(error, info){
        if (error) {
            console.log("it has an err", error);
        }
        else{
            console.log("email sent" + info.response)
            req.flash('success', 'Email sent! We will contact you shortly')
        }
        res.redirect(redirectPath) 
    })
    
}

module.exports = controller