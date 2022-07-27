// const keys = {
//     database: {
//         host: 'localhost',
//         user: 'root',
//         password: '',
//         database: 'kydft'
//     }
// }
require('dotenv').config()

const keys = {

    database: {
        host: process.env.DB_HOST ,
        user: process.env.DB_USER,
        password: process.env.DB_PASS,
        database: process.env.DB,
        port: process.env.DB_PORT
    }
}

module.exports = keys;