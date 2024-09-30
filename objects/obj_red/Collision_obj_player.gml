
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/*
// Colisión con el jugador
if (place_meeting(x, y, obj_player)) {
    // Acá se activaría la función de colisión, por ejemplo:
    global.vidas--;
    instance_destroy(self); // Destruye al enemigo
}
*/
/*
// Dañar al jugador (ajusta el valor de daño según sea necesario)
instance_create_layer(x, y, "Instances", obj_damage_effect); // Crea un efecto visual de daño
with (obj_player) {
    health -= 10;
    if (health <= 0) {
        instance_destroy(); // Destruye al jugador si la salud llega a 0
    }
}

// Destruir al enemigo
instance_destroy();