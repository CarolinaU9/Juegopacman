/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (other.sprite_index == spr_enemyscared)
	{
	global.Puntos += 200;
	audio_play_sound(snd_extra,10,false);
	
	with (other)
		{
		x = xstart;
		y = ystart;
		velocity = 0;
		speed = velocity;
		sprite_index = spr_blue;
		image_index = col;

		}
	}
	
    
else if (!global.Golpe && global.Vidas > 0) {
    // Si el jugador no tiene el power-up, no ha golpeado antes y tiene vidas
    speed = 0; 
    sprite_index = spr_dead;
    image_index = 1;
    global.Golpe = true;
    global.Vidas -= 1; // Restar una vida
}