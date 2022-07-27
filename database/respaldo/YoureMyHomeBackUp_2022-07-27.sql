/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: comments
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmnt` varchar(3000) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `pic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user` (`user_id`),
  KEY `fk_pic` (`pic_id`),
  CONSTRAINT `fk_pic` FOREIGN KEY (`pic_id`) REFERENCES `pics` (`id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: music
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songname` varchar(60) DEFAULT NULL,
  `artist` varchar(60) DEFAULT NULL,
  `song` varchar(100) DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pdf
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pdf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pics
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(300) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `pic` varchar(300) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 107 DEFAULT CHARSET = latin1;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: sessions
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: comments
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: music
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pdf
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pics
# ------------------------------------------------------------

INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    1,
    'coffee',
    'La primera vez que salimos a un café y fue con mis amigas, comimos alitas muy picosas, recuerdo como estabas súper enchilado pero no dejabas de comer.',
    'https://datosdiana.blob.core.windows.net/youremyhome/1.png',
    'draw'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    2,
    'light',
    'Ese día nos quedamos sin luz y tuvimos que quedarnos en casa con Mónica aparte de salir con ella, pero fue de los más divertidos de ese invierno.',
    'https://datosdiana.blob.core.windows.net/youremyhome/2.png',
    'draw'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    3,
    'grounds',
    'Nos sentamos en las escaleras mientras platicabamos y mirabamos que bonito estaba el cielo, era como si solo existieramos nosotros dos.',
    'https://datosdiana.blob.core.windows.net/youremyhome/3.png',
    'draw'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    4,
    'finger',
    'Es la primera foto que nos tomamos juntos parando el dedo de enmedio. Fue uno de los momentos más bonitos y es una de mis fotos favoritas de ese año.',
    'https://datosdiana.blob.core.windows.net/youremyhome/4.png',
    'draw'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    5,
    'another',
    'Otra fotito de cuando estabamos en el café, son 3/3 las que dibuje, las tomaste con tu celular y me sentí tan especial porque fue de las primeras veces que lo hacias.',
    'https://datosdiana.blob.core.windows.net/youremyhome/5.png',
    'draw'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    6,
    'eyeglasses',
    'La primera foto que me enviaste para mi haciendo unas de tus señas raras, nunca entendí que significaban, pero siempre te veias muy guapo.',
    'https://datosdiana.blob.core.windows.net/youremyhome/6.png',
    'draw'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    7,
    'cookie',
    'Otra foto del día que no teniamos luz, recuerdo que tenia bien mucha hambre pero no había nada para cenar y nos comimos bien muchas galletas de las que tenía ahí mi tia Lupe. Nos tomamos bien muchas fotos ese día, la verdad estabamos bien contentos y bien guapos.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(1).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    8,
    'lil kiss',
    'Estabamos hablando por teléfono y quisimos vernos porque nos extrañabamos mucho. En ese tiempo nos dabamos besitos levantandonos la nariz, bien lindos como si fueramos unos puerquitos, fue casi de recien que te fuiste y aunque no teniamos tanto tiempo sin vernos te extrañaba un monton y me encantaba darte besitos así.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(2).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    9,
    'piggy',
    'La primera foto que nos tomamos la ultima vez que viniste, estabamos  bien contentos y me tomaste esa foto haciendome la nariz de cerdito, cada que veo la foto solo recuerdo lo feliz que estaba por verte de nuevo y tenerte entre mis brazos. La verdad, veo la foto y solo veo una Diana feliz, ojalá pudiera volver a ese día.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(3).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    10,
    'cheek',
    'De las únicas fotos que tengo dandome un beso en el cachete, me encanta porque siento que se nota que nos queremos un montón y que somos el uno para el otro.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(4).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    11,
    'sleep',
    'Recuerdo que ese día estabamos acostados en mi cama y estaba tan agusto que comenzo a darme sueño, no recuerdo mucho de lo que paso entre medias ni a que hora tomaste esa foto, solo sé que me quede dormida a tu lado, la primera vez que duermo contigo, no sabes la felicidad y amor que siento por esa foto, es una de mis fotos especiales.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(5).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    12,
    'half',
    'Otra foto que siento que es de las más especiales, porque muestra como somos el uno para el otro, almas gemelas, que juntos nos complementamos. Sale la mitad de nuestros rostros mostrando que ambos, estando juntos somos uno mismo, uno solo, me veo muy feliz porque estoy demasiado enamorada de ti y creo que toda la vida lo voy a estar.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(6).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    13,
    'distracted',
    'La ultima vez que viniste tome esa foto, mientras toda mi familia estaba ahí en la sala, platicando, tu estabas viendo una pelicula en la tv y yo estaba bien feliz recostada en tu pecho, me sentia en ese momento la persona más afortunada del planeta entero porque tenía todo lo cualquiera podría desear.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(7).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    14,
    'boob',
    'Fue en la plaza de San Antonio, tu querias que nos tomaramos muchas fotos y que nos dieramos un monton de besos y lo hicimos, pero a parte de todo me metiste la mano dentro de la blusa, me encanta cuando eres así, amoroso pero que me tienes un montón de ganas.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(8).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    15,
    'kiss',
    'De las mejores fotos que nos hemos tomado, tu fuiste corriendo y acomodaste el celular para que pudieramos tomarnos esa foto, estaba tan convencida de que no sería la unica foto que nos tomariamos así pero me equivoque, aunque se puede notar lo enamorada que estoy y se te ve a ti un poco timido, me encantaba sentir tus labios rosando los mios, la neta me encanta besarte',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(9).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    16,
    'happy',
    'Esta y las siguientes fotos son del mismo día, de hecho esta foto fue la primera que nos tomamos así de lejos y luego nos tomamos donde nos estamos besando, en esta nos vemos muy felices y con ganas de estar siempre juntos, la verdad nunca creí llegar a querer tanto a alguien como lo hago contigo',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(10).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    17,
    'hot',
    'Andabas de caliente y tomaste varias fotos tocandome o agarrandome, yo sentía mucha verguenza porque nos podían ver, pero contigo todo me da más seguridad y me siento más comoda... Que ganas de volver a ese día.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(11).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    18,
    'muak',
    'Una selfie dandonos un pequeño besito:)',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(13).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    19,
    'fingers',
    'Ambos saludando a la camara, cada uno a su manera.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(14).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    20,
    'baby',
    'Tengo un montón de fotos donde te estoy dando besos, ya sea en el cachete, en la mano, en la frente, etc. Se me hacen tan lindas cada una de ellas por la carita que tu tienes, como si realmente te sintieras consentido por mi.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(15).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    21,
    'sad',
    'En esa foto estaba pensando que no quería que se acabara el día, porque realmente estaba siendo muy feliz.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(16).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    22,
    'very sad',
    'Te estaba abrazando, no queria que todo se terminara, que ese día se acabara, sabia que te iba a extrañar de una forma que ni siquiera creria posible. Te extraño muchisimo mi amor',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(17).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    23,
    'night',
    'Monica te acababa de hacer una trenza y dijiste que nos tomara una foto, a mi me calo mucho el flash y salgo con cara de dormida',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(18).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    24,
    'almost',
    'Casi nos besabamos en esa foto, me agarraste y no podiamos parar de reir mientras queriamos que saliera una foto bonita.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(19).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    25,
    'look',
    'Tenia tantas ganas de besarte, solamente miraba tu preciosa carita y tus labios, realmente queria estar a solas contigo.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(20).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    26,
    'hand',
    'Ese día tenias bien muchas ganas y solo andabas tocandome, tomaste un monton de fotos y videos donde me estas agarrando o tocando. Me encanta sentirte y saber que te gusta como soy, aunque a mi no me guste, a ti te encanta mi cuerpo.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(22).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    27,
    'forced',
    'Me agarraste a la fuerza para besarme, me daba bien mucha vergüenza que Monica nos estuviera viendo, pero me encanta que me beses.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(23).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    28,
    'hands',
    'Nuestro primer viaje juntos con mi familia completa, estaba tan feliz de ir por primera vez a un lugar contigo y mi famiia. Fue uno de mis días favoritos aunque quiza tu no estuvieras tan agusto como yo, pero yo ya me sentia como si fueramos una familia tu y yo, una pequeña familia.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(25).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    29,
    'tongue',
    'Del mismo día que estabas bien caliente pero estabamos en mi casa, acababas de llegar a la Unión y luego luego nos tomamos esa foto.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(26).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    30,
    'hat',
    'Estabamos en llamada y no sé de donde sacaste un sombrero para ponerte, pero te veias bien guapo.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(27).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    31,
    'rest',
    'Salimos de mi casa y nos sentamos en el borde de la presa, me recoste en tus piernas y me sentia tan enamorada, tan linda, tan suertuda. Te amo demasiado.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(28).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    32,
    'place',
    'Nuestro lugar, se veía todo tan lindo, cada vez que me siento triste o tengo que pensar algo voy a ese lugar para pensar y tratar de resolver esos problemas. Cada vez que te extraño voy a ver ahí, aunque ya todo esta muy distinto a como la ultima vez que lo viste.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(29).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    33,
    'party',
    'Fuimos a la fiesta de mi prima y tomamos algo, nos pusimos bien felices y andabamos bien agusto, hasta cuando nos vinimos solo nos andabamos besando y abrazando.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(31).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    34,
    'phone',
    'Del día que no teniamos luz, y tu querias que nos tomaramos muchas fotos.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(32).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    35,
    'first',
    'La primera foto que nos tomamos juntos, la primera que tome de nosotros.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(33).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    36,
    'bro',
    'Esta si es nuestra primera foto juntos, nos la tomo tu hermano, ese día fueron a despedirse de nosotros, al día siguiente te ibas a ir y te regale la primera pulsera de todas, incluso antes de esa foto ya me gustabas.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(40).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    37,
    'dark',
    'Fue una de las selfies que nos tomamos cuando no teniamos luz, extraño esos días.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/ours/1%20(39).jpeg',
    'ours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    38,
    'love',
    'Estabas emocionado, me dijiste que te encantaba mucho y que era la mejor, estabas muy enamorado de mi.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(1).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    39,
    'heart',
    'Ya no estabamos juntos y tenias varios dias sin hablarme, pero te mande una canción que queria dedicarte y me contestaste al día siguiente, nunca me habia sentido así de feliz.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(2).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    40,
    'time',
    'Me sentía un poco triste e insuficiente, pero me animaste diciendome lo que sientes por mi y por las cosas que hago, me encantas.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(3).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    41,
    'like',
    'Fue la primera vez que le diste like a mi story desde que nos dejamos, me puse muy feliz hasta que me dijiste que solo fue por la cancion.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(40).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    42,
    'photo',
    'Se me hizo bien lindo que pusiste de pfp una de las fotos que te acababa de mandar, me sentia bien afortunada en cada minuto.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(5).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    43,
    'girl',
    'Me dijiste mi primer apodo, chikibaby, me emocione bien mucho porque nunca antes me habias dicho de una forma más que amor o bb.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(6).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    44,
    'both',
    'Tenias una foto de nosotros dos bien felices como pfp, en serio que sentia que me querias demasiado',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(7).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    45,
    'more',
    'Por primera vez pude amarte más, pero no para siempre porque siempre quisiste tu amarme más y para siempre.',
    ' https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(8).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    46,
    'always',
    'Siempre me mandabas videos dandome bieeeeeeen muchos besos, siempre me senti una persona bien afortunada por la forma en la que me querias',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(9).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    47,
    'liked',
    'Me contaste cuando te enteraste que ya te gustaba, yo crei que te habia empezado a gustar cuando te bese, pero resulta que desde antes ya nos gustabamos.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(10).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    48,
    'call',
    'Despues de terminar, un tiempo estuvimos más o menos bien y ese día tu me marcaste, sin que yo te dijera o algo, estuvimos hablando por horas y bien entretenidos los dos, me sentía tan nerviosa y tan contenta.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(11).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    49,
    'hours',
    'Duramos más de cinco horas completas hablando, ni siquiera me la podía creer que estuvieras ahi despues de todo.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(12).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    50,
    'song',
    'Te dedique una canción y aunque no me contestaras al menos le dabas corazón a las cosas que te mandaba, ya no estabamos juntos pero así al menos sabia que las veias o las escuchabas',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(13).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    51,
    'friends',
    'Despues de mucho tiempo sin estar juntos dijiste que podiamos ser amigos, pero de los que se besan, me dio ilusión aunque ahora solo me duele porque ni siquiera quieres hablarme.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(14).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    52,
    'cute',
    'El mensaje más lindo que me has mandado, sentí tan lindo que me mandaras esos mensajes, diciendo que me amas y riendo conmigo.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(15).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    53,
    'little me',
    'Te mostre la canción que más me gustaba cuando era pequeña, me encantaba esa canción y cuando la escuche de nuevo tu recuerdo fue el que llego a mi cabeza sin siquiera quererlo, me di cuenta de que te amo demasiado.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(16).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    54,
    'insta',
    'Otro like a una de mis stories, tengo cada uno de ellos en un screenshot, porque me gusta ver y recordar que te guste en algun momento.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(17).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    55,
    'video',
    'Te mande un video de recien acabada de levantar y le diste corazón, me emocione.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(18).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    56,
    'candy',
    'No me contestabas, pero te invite de una paleta y al día siguiente me contestaste.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(19).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    57,
    'goodbyes',
    'Nos  despedimos ese día, dijimos que nos ibamos a extrañar tanto y me dijiste lo mucho que te gustaba.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(20).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    58,
    'bd',
    'Para tu cumpleaños subi una foto nuestra y tu le diste like, aunque quiza lo haces con cualquiera y por cualquier cosa, pero para mi fue especial.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(21).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    59,
    'hearts',
    'Me estabas mande y mande una cadenota hecha de puros emojis, puros corazones y todo se veía bien lindo.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(22).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    60,
    'best',
    'Me mandaste un monton de mensajes diciendo las mejores cosas, se sintió tan lindo y si mil veces lo leo mil veces siento tan lindo, quisiera volver a ese tiempo.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(23).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    61,
    'paragraph',
    'Te conteste un mensaje tan largo que me mandaste por la madrugada, nunca me había emocionado tanto.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(24).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    62,
    'story',
    'Me subiste a tu story por unos minutos el día de mi cumpleaños y me sentí la niña más afortunada del mundo.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(25).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    63,
    'pt. 2',
    'Parte dos de cuando me dijiste que me querias y ya no estabamos juntos, me emocione y luego luego me pusiste que no me emocionara.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(29).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    64,
    'leave',
    'Me acababas de dejar y me pediste volver a ser tu novia el mismo día, se ve tan lindo la forma en lo que me dijiste, aunque yo he tratado de varias maneras volver, aun no he podido.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(30).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    65,
    'married',
    'El acta de matrimonio, tan linda de esa vez que nos case, estabamos bien felices y nuestro matrimonio duro por lo menos dos años o algo así.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(35).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    66,
    'remember',
    'Ya no estando juntos te mande el acta de nuestro matrimonio diciendo que no podiamos dejarnos porque estabamos casados, pero despues de un tiempo te di tu libertad y me divorcie de ti, quiero que si nos volvemos a casar ahora nazca de ti. ',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(31).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    67,
    'pt. 1',
    'Parte uno de cuando me dijiste que me querias despues de terminar, estaba muy emocionada.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(32).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    68,
    'morning',
    'Mensaje enorme que  me mandaste en la madrugada cuando no podias dormir pero estabamos en llamada, me emocione demasiado leyendo ese mensaje.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(33).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    69,
    'marriage',
    'Me propusiste matrimonio de una forma bien loca, solo con un emoji, luego me dijiste que no me emocionara, pero yo solo queria que me robaras como novia.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(34).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    70,
    'love',
    'Dijiste que te encantaba',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(36).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    71,
    'feelin',
    'Con varios mensajes me explicaste lo que sientes por mi.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(38).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    72,
    'movie',
    'Te invite a ver una pelicula, no la vimos como cada vez, pero al menos me contestaste.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(39).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    73,
    'old',
    'Me dijiste que querias estar conmigo hasta viejitos, pero pues no lo estuvimos.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(42).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    74,
    'case',
    'Mandaste una foto de tu case viejo, el que decoramos con pintura de uñas y nuestras iniciales.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/messages/1%20(45).jpeg',
    'messages'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    75,
    'car',
    'No recuerdo a donde me habias dicho que ibas pero nunca antes me habias mandado un beso donde salieras tan clarito, te ves bien hermoso.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(2).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    76,
    'park',
    'Estabamos en el parque frente a mi casa y te veias tan lindo con el cielo y los arboles, tan feliz que no podia evitar tomarte mil fotos.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(1).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    77,
    'friends',
    'La primera foto que me mandaste despues de mandarsela a tus amigos supongo, por el mensaje que tiene y porque creo que estabas tomando jarabe con sprite.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(3).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    78,
    'young',
    'Esa fue la primera foto que tuve de ti de pequeño, te ves tan lindo y tierno, cantando y bien concentrado.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(5).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    79,
    'sweater',
    'Ya habia comenzado la pandemia y esa sudadera siempre se te vio muy muy bien, me encanto vertela puesta cada vez.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(6).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    80,
    'ily',
    'Saludito diciendome que me amas.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(7).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    81,
    'bed',
    'De las primeras veces que volvias a dormir en un cuarto, pero casi no te llegaba el internet hasta allá por el celular que tenias.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(8).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    82,
    'school',
    'Seguia en clases pero tu ya habias llegado, entonces me esperabas cada vez hasta terminar para poder estar conmigo, la verdad siempre me fue imposible estudiar mientras estabas conmigo, no me podia concentrar.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(9).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    83,
    'water',
    'Te ves tan lindo de pequeño y todo enlodado, me encantas.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(10).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    84,
    'brother',
    'La primera foto que me mandaste junto a tu hermanito, bien lindos los dos.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(12).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    85,
    'braid',
    'Dejaste que Monica te peinara para tomarnos unas fotos, siempre le senti un poco de envidia porque ni a mi me dejabas tocarte el cabello',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(13).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    86,
    'work',
    'Con tu traje del trabajo del Little Caesars, siempre como todo te queda super bien.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(14).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    87,
    'homescreen',
    'Mi primer homescreen tuyo, te ves tan pequeño y lindo.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(15).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    88,
    'smile',
    'No teniamos luz y te veias tan feliz ese día conmigo, te amo demasiado.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(16).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    89,
    'kiss',
    'Unica foto que tengo de ti besandome la mano, creo que fue la primera y unica vez que lo hiciste, se me hizo tan bonito y romantico.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(17).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    90,
    'blanket',
    'Estas amarradito como un pequeño tamalito, te ves bien cute.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(20).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    91,
    'nose',
    'Antes los mensajes me los mandabas por fotitos, y me encanta cuando hacias eso del cerdito.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(21).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    92,
    'iphone',
    'Primera foto con tu nuevo celular, la calidad de las fotos mejoro un monton y a partir de ahí tambien comenzaste a mandarme menos fotos.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(22).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    93,
    'bun',
    'Te veias super guapo, tenias el cabello largo y te lo recogias en un chonguito, ese día creo que estabas en el cuarto de Daniel y te veias super guapo.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(23).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    94,
    'disheveled',
    'Acababas de despertar y se te ocurrio mandarme una foto, cada que la veo me dan unas ganas de tenerte cerquita y llenarte la cara de besos.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(24).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    95,
    'fingers',
    'Muy seguido me mandabas fotos haciendo tus señas raras, pero me encantaba imitarte y ni siquiera saber que es lo que hacia.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(25).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    96,
    'stripes',
    'El sueter de rayas que tanto te gustaba, ni siquiera sé si aun lo tienes o si te sigue gustando.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(28).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    97,
    'jacket',
    'Siempre me encanto esa chamarra, pero nunca pude verte con ella en persona, nunca te la trajiste, pero creo que al menos 3 o 4 fotos de ti con ella si tengo.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(29).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    98,
    'sun',
    'La luz del sol a tu espalda te hace ver super bien, ademas de esa boquita que siempre me dan ganas de besar.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(30).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    99,
    'mask',
    'No sé de donde sacaste todo eso que te pusiste, pero parecias un mafioso, como un asesino guapo, de esos de peliculas.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(31).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    100,
    'room',
    'Te tomaste varias fotos en mi cuarto y no supe ni siquiera donde estaba yo, pero 1000/10 que te ves, más porque es frente mi espejo',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(32).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    101,
    'legs',
    'Estabas recostado sobre mis piernas, estabamos en nuestro lugar especial y no podiamos sentirnos más felices y con más paz en ese momento.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(33).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    102,
    'car',
    'Ni siquiera sé de donde saque esa foto, pero te ves bien tierno con tu bolsa en una mano parado a un lado de un carro bien perron.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(34).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    103,
    'headphones',
    'Una de las tantas fotitos que me mandaste con tus audifonos mientras me saludabas y me mandabas un besito.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(35).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    104,
    'angels',
    'Con ese filtro te ves tan lindo, ademas de que es una fotito sin camisa, si pasaba seguido pero no tanto, porque siempre tenias calor',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(36).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    105,
    'hair',
    'Estaba en tus piernas y te tome una foto, así fue como posaste, me encanta como te ves en todas las fotos, pero mucho más en las que tome en ese lugar.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(37).jpeg',
    'yours'
  );
INSERT INTO
  `pics` (`id`, `caption`, `description`, `pic`, `category`)
VALUES
  (
    106,
    'hand',
    'Estabas arreglando tu cabello porque te dije que te pusieras para tomarte una foto, pero tenias mucha vergüenza y aun recuerdo como te reias por eso.',
    'https://datosdiana.blob.core.windows.net/youremyhomemusic/kev/1%20(38).jpeg',
    'yours'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: sessions
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: users
# ------------------------------------------------------------


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
