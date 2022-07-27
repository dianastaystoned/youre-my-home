const express = require('express');
const router = express.Router();

const authController = require('../controllers/auth.controller');

router.get('/login', authController.renderLogin)
router.post('/login', authController.Login)
router.get('/logout', authController.LogOut)
router.get('/signup', authController.renderSignUp)
router.post('/signup', authController.SignUp)

module.exports = router;