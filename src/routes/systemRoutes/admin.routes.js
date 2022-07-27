const express = require('express');
const router = express.Router();

const homeController = require('../../controllers/systemControllers/home.controller')
const galleryController = require('../../controllers/systemControllers/gallery.controller')
const musicController = require('../../controllers/systemControllers/music.controller')
const gamesController = require('../../controllers/systemControllers/games.controller')

router.get('/home', homeController.renderPics);
router.post('/send-email', homeController.sendEmail);
router.get('/gallery', galleryController.renderGallery);
router.get('/musicplayer', musicController.renderMusic);
router.get('/minigames', gamesController.renderGames)

module.exports = router;