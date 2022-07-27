const helpers = require('../helpers/helpers')

module.exports = {
    isLoggedIn (req, res, next) {
        if(req.isAuthenticated()){
            return next();
        }
        req.flash('success','Please, sign in or sign up, then we give u all the access.') 
        res.redirect('/login')
    }
};