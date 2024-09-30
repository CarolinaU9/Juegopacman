/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
#region //Activar a los enemigos

#endregion

#region

#endregion

//Verificacion de si fue completado el nivel o si pacman murio
if instance_number(obj_bolita) == 0 and instance_number(obj_powerup) && global.Vidas != 0
	{
	if room_next(room) != -1
	{
	audio_stop_all();
	room_goto_next();
	}
else
	{
	audio_stop_all();
	room_goto(rm_gameover);
	instance_destroy();
	}
	
	
	}


#region 
if ! (audio_is_playing(snd_music))
	{
		instance_activate_object(obj_red);
	}
#endregion

#region 
