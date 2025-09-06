if(!other.is_charmed && !is_invulnerable)
{
	scDeath()
}
else if(is_invulnerable)
{
	instance_destroy(other);
}