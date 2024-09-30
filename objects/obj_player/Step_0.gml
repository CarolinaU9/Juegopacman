//PASO
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



up_Key = keyboard_check(vk_up);
down_Key = keyboard_check(vk_down) ;
right_Key = keyboard_check(vk_right) ;
left_Key = keyboard_check(vk_left) ;


// Calcular la velocidad para el personaje
xspd = (right_Key - left_Key) * move_spd;
yspd = (down_Key - up_Key) * move_spd;

// Asignamos sprites
mask_index=sprite[RIGHT];

if yspd ==0
{
	if xspd > 0 {face=RIGHT};
	if xspd < 0 {face=LEFT};
}


if xspd == 0
{
    if yspd > 0 {face=DOWN}; 
    if yspd < 0 {face=UP};  
}
sprite_index= sprite[face];

//Colision
if place_meeting(x + xspd, y, obj_wall) == true
{
	xspd=0;
}

if place_meeting(x, y+yspd, obj_wall) == true
{
	yspd=0;
}

// Incrementar velocidad
x = x + xspd;
y += yspd;

// Animación del personaje
if xspd == 0 && yspd == 0
{
	image_index = 0;
}

depth = bbox_bottom;

//power up
if (has_powerup) {
    powerup_timer++;
    if (powerup_timer >= 0) { // Duración del power-up en steps (ajustar según sea necesario)
        has_powerup = false;
        // Aquí puedes agregar efectos visuales o sonoros para indicar que el power-up se ha acabado
    }
}

//if  (global.Golpe) exit;




