/// @description Ataque al enemigo
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
		sprite_index = spr_orange;
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

// En el evento de paso (Step) del objeto enemigo

// Calcular la dirección hacia el jugador
var target_x = obj_player.x;
var target_y = obj_player.y;
var angle = point_direction(x, y, target_x, target_y);

// Comprobar si hay un obstáculo entre el enemigo y el jugador
if (collision_line(x, y, target_x, target_y, obj_wall, false, true)) {
    // Si hay un obstáculo, el enemigo se detiene
    speed = 0;
} else {
    // Si no hay obstáculos, el enemigo persigue al jugador
    move_towards_point(target_x, target_y, speed);
}

