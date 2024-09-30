// Variables del enemigo
//Paso
if global.Golpe
	{
	speed = 0;
	vspeed = 0;
	hspeed = 0;
	visible = false;
	
	x = xstart;
	y = ystart;
	exit;
	}
	{
	visible = true;
	}


// Variables
move_speed = 2;
change_direction_chance = 0.1;

// Evento "Step"
if (random(1) < change_direction_chance) {
    // Generar una nueva dirección aleatoria
    direction = random(360);
	direction = choose(0,90,180,360);
}

// Calcular la nueva posición
var new_x = x + lengthdir_x(move_speed, direction);
var new_y = y + lengthdir_y(move_speed, direction);

// Comprobar si hay una colisión con la pared
if (place_meeting(new_x, new_y, obj_wall)) {
    // Si hay una colisión, buscar una dirección alternativa
    direction += 180;  // Invertir la dirección
} else {
    // Si no hay colisión, mover al enemigo
    x = new_x;
    y = new_y;
}

if (global.Golpe) {
    // Reiniciar global.Golpe después de un tiempo o evento específico
    global.Golpe = false;
}