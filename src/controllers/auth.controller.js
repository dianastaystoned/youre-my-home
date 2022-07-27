const controller = {}
const passport = require('passport')

controller.renderLogin = (req, res) => {
    res.render('auth/login.hbs')
}

controller.Login = (req, res, next) => {
    passport.authenticate('local.login', {
        successRedirect: '/admin/dashboard',
        failureRedirect: '/login',
        failureFlash: true
    })(req, res, next);
}

controller.renderSignUp = (req, res) => {
    res.render('auth/signup.hbs');
}

controller.SignUp = (req, res, next) => {
    passport.authenticate('local.signup', {
        successRedirect: '/admin/dashboard',
        failureRedirect: '/signup',
        failureFlash: true
    })(req, res, next);
}

controller.LogOut = (req, res,next)=>{
    req.logOut();
    res.redirect('/login')
}

module.exports = controller