const passport = require('passport')
const LocalStrategy = require('passport-local').Strategy
const helpers = require('../helpers/helpers')
const connection = require('../database')
const { Console } = require('console')


passport.use('local.login',new LocalStrategy({
    usernameField:"username",
    passwordField:"password",
    passReqToCallback: true,
},  async(req, nombre, contra, done) => {
    const rows = await connection.query("SELECT * FROM users WHERE nombre = ?",[nombre])
    if (rows.length > 0) {
        const user = rows[0];
        const validPass = await helpers.matchPassword(contra, user.password)
        if(validPass){
            done(null, user,req.flash("success", `Welcome ${user.uname}`))
        }else{
            done(null, false, req.flash("error", "Wrong user or password, please try again."))
        }
    }else{
        console.log('err2')
        return done(null, false,req.flash("error", "Oops! Something went wrong, please try again."))
    }
}))

passport.use('local.signup', new LocalStrategy({
    usernameField: 'username',
    passwordField: 'password',
    passReqToCallback: true
}, async (req, uname, lastname, username, password, done) => {
    const newUser = {
        uname,
        lastname,
        username,
        password
    }
    newUser.password = await helpers.encryptPassword(password)
    const result = await connection.query('insert into users set ?', [newUser])
    req.flash("success", "Your account has been created, enjoy the website!")
    newUser.id = result.insertId
    return done(null, newUser)
   
}))

passport.serializeUser((user, done) => {
    done(null, user.id);
});

  passport.deserializeUser(async(id, done)=>{
      const rows = await connection.query("select * from users where id = ?",[id])
      const user = rows[0]
      done(null, user)
  })