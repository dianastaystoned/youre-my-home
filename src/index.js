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


//Server port config
let port = 4000 || process.env.PORT
const server = app.listen(port, ()=>{
    console.log(`Listening on port ${port}`)
})

var date = new Date();
var now = date.toISOString().split('T')[0];
var fileName= 'YoureMyHomeBackUp_' + now ;
mysqldump({
  connection: {
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'kydft',
  },
  dumpToFile: `./database/respaldo/${fileName}.sql`,
});