/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
audio_play_sound(snd_music,10,true) //true o false si quieres que se repita la musica y la duracion

global.Puntos = 0; //Puntaje de videojuego
global.Vidas = 3; //Vida del personaje
global.Power = false; //Boost del personaje
global.Bonos = false; //Bono para mas 
global.Enemigo = false; //Enemigos
global.Golpe = false; // Ataque a enemigo

alarm[0] = room_speed * 10;

