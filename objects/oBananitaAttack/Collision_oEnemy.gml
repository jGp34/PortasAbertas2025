if(!other.is_charmed)
{
	other.is_charmed = true;
	other.image_blend = c_purple;
	if(variable_instance_exists(other, "move"))
	{
		other.move *= -1;
	}
	if(variable_instance_exists(other, "hspd"))
	{
		other.hspd *= -1;
	}
	instance_destroy();
}