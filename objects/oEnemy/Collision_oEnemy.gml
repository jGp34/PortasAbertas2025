if(is_charmed && !other.is_charmed)
{
	instance_destroy();
	instance_destroy(other);
}