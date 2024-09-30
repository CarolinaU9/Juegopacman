/// @description Inserte aquí la descripción
// Puede escribir su código en este edito

global.Puntos += 100; //Incrementamos puntaje
global.Bonos = true; 

audio_play_sound(snd_bono,10,false);

with(other) //Destruimos bono
	{
		instance_destroy();
	}
