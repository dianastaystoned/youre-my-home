// const keys = {
//     database: {
//         host: 'localhost',
//         user: 'root',
//         password: '',
//         database: 'kydft'
//     }
// }

const keys = {

    database: {
        host: process.env.DB_HOST || 'localhost',
        user: process.env.DB_USER || 'root',
        password: process.env.DB_PASS || 'Dianadestyles1$',
        database: process.env.DB || 'kydft',
        port: process.env.DB_PORT
    }
}

module.exports = keys;