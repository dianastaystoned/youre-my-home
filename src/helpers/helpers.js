const bcrypt = require('bcryptjs');
const passport = require('passport');
const connection = require('../database')
const helpers = {}

helpers.encryptPassword = async (password) => {
    const salt = await bcrypt.genSalt(10);
    const hash = await bcrypt.hash(password, salt);
    return hash;
};

helpers.matchPassword = async (password, savedPassword) => {
    try {
        return await bcrypt.compare(password, savedPassword);
    } catch (error) {
        console.log(error);
    }
}

helpers.userExist = async (username)=>{
    const exist = await connection.query(`select * from users where username like '%${username}%'`) 
    return exist.length > 0 ? true : false;
}

module.exports = helpers