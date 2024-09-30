/// @description Putos para score
// Puede escribir su código en este editor

global.Puntos += 10; //Incrementamos puntaje

audio_play_sound(snd_eating,10,false);

with (other) //Destruimos comida
	{
		instance_destroy();
	}