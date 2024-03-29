const connection = require('./database')
const express = require('express')
const morgan = require('morgan')
const session = require('express-session')
const MySqlSessionStore = require('express-mysql-session')(session)
const path = require('path')
const flash = require('connect-flash')
const passport = require('passport')
const {engine} = require('express-handlebars')
require('./lib/passport')
require('dotenv').config()
const { database } = require('./config/keys')
const mysqldump = require('mysqldump')

//initializations
const app = express();
require('./lib/passport');

//config
app.set("views",path.join(__dirname, "views"))
app.engine(".hbs",
engine({
    defaultLayout: "main",
    layoutsDir: path.join(app.get("views"), "layouts"),
    partialsDir: path.join(app.get("views"), "components"),
    extname: ".hbs",
    helpers: require('./helpers/handlebars')
  })
);
app.set("view engine", ".hbs");

//middlewares
app.use(morgan("dev"));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const sessionConfig = session({
  secret: 'dianastaystoned',
  resave: false,
  saveUninitialized: false,
  store: new MySqlSessionStore(database)
})
app.use(sessionConfig)


app.use(flash())
app.use(passport.initialize())
app.use(passport.session())


//global variables
app.use((req, res, next) => {
    app.locals.success_msg = req.flash('success')
    app.locals.error = req.flash("error")
    app.locals.user = req.user;
    next();
  })


//static files (css, html, js, media resources)
app.use(express.static(path.join(__dirname,'public')))
app.use('/', require('./routes/auth.routes'))
app.use(require('./routes/systemRoutes/admin.routes'))
app.use(require('./routes/landinPage.routes'))

app.get('/home', (req, res, next) => {

  res.status(200).json({
      status: 'success',
      data: {
          name: 'lol',
          version: '0.1.0'
      }
  });

});

//Server port config
let port = 4000 || process.env.PORT
const server = app.listen(process.env.PORT, ()=>{
    console.log(`Listening on port ${port}`)
})

