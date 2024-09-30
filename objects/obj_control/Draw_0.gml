/// @description dibujar los puntos y la vida
#region  //Dibujar el score
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_score);
draw_text(32,16, "PUNTAJE: "+string(global.Puntos));
#endregion 




#region //Dibujar las vidas 
draw_text(room_width/2,16,"VIDAS: "+string(global.Vidas));
//Loop para verificar la cantidad de vidas que tiene
for(var i = 0; i < global.Vidas; i += 1)
 {
	 draw_sprite_stretched(spr_right,1,room_width/2+string_width("VIDAS:    ")+ (i*32), 16, 16, 16);
 }
 
// Evento de colisión del jugador con el enemigo
if (place_meeting(x, y + 1, obj_orange)) { // Ajusta obj_enemy según el nombre de tu objeto enemigo
    global.Vidas = -1;
    // Aquí puedes agregar efectos visuales o sonoros cuando el jugador pierde una vida
}

if (place_meeting(x, y + 1, obj_pink)) { // Ajusta obj_enemy según el nombre de tu objeto enemigo
    global.Vidas = -1;
    // Aquí puedes agregar efectos visuales o sonoros cuando el jugador pierde una vida
}

#endregion


#region //Dibujar el ready 
if (audio_is_playing(snd_music))
	{
	draw_set_color(c_yellow);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_ready);
	
	draw_text(room_width/2, room_height/2-50, "Ready!");
	}


#endregion 

#region//Dibujar el bono

#endregion

#region//Dibujar el GameOver

#endregion