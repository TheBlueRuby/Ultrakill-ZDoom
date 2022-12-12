class ZoombieMan : ZombieMan 
{
    Default 
    {
        Speed 69;
    }
    States
	{
        Spawn:
            POSS AB 10 A_Look;
            Loop;
    }
}