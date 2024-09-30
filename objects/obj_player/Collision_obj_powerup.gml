///*

alarm [0] = room_speed*5;
global.Puntos += 50;
global.Power = true;
audio_play_sound(snd_extra,10,false);

with (obj_orange) //Destruimos enemigo
	{
	sprite_index = spr_enemyscared;
	image_speed = 0;
	image_index = 0;
	
	velocity = 0;
	speed = 0;

	};
with(other)
	{
	instance_destroy();
	}


with(obj_pink) //Destruimos enemigo
	{
	sprite_index = spr_enemyscared;
	image_speed = 0;
	image_index = 0;
	
	velocity = 0;
	speed = 0;

	};
with(other)
	{
	instance_destroy();
	}
	
with(obj_blue) //Destruimos enemigo
	{
	sprite_index = spr_enemyscared;
	image_speed = 0;
	image_index = 0;
	
	velocity = 0;
	speed = 0;

	};
with(other)
	{
	instance_destroy();
	}
	
with(obj_red) //Destruimos enemigo
	{
	sprite_index = spr_enemyscared;
	image_speed = 0;
	image_index = 0;
	
	velocity = 0;
	speed = 0;

	};
with(other)
	{
	instance_destroy();
	}
	
