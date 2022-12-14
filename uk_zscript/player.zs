class V1 : DoomPlayer
{
    const CROUCHSPEED = (1./0.5);

    Default
    {
        Speed 2;
        Radius 8;
        Player.DisplayName "V1";
        Player.JumpZ 16.0;
        Player.StartItem "Feedbacker";
        Player.Face "STV";
    }

    States
	{
        Spawn:
            PLVO A -1;
            Loop;
            
        See:
            PLVO ABCD 4;
            Loop;
            
        Missile:
            PLVO E 12;
            Goto Spawn;
            
        Melee:
            PLVO F 6 BRIGHT;
            Goto Missile;
            
        Pain:
            PLVO G 4;
            PLVO G 4 A_Pain;
            Goto Spawn;
            
        Death:
            PLVO H 0 A_PlayerSkinCheck("AltSkinDeath");
            
        Death1:
            PLVO H 10;
            PLVO I 10 A_PlayerScream;
            PLVO J 10 A_NoBlocking;
            PLVO KLM 10;
            PLVO N -1;
            Stop;
            
        XDeath:
            PLVO O 0 A_PlayerSkinCheck("AltSkinXDeath");
            
        XDeath1:
            PLVO O 5;
            PLVO P 5 A_XScream;
            PLVO Q 5 A_NoBlocking;
            PLVO RSTUV 5;
            PLVO W -1;
            Stop;
            
        AltSkinDeath:
            PLVO H 6;
            PLVO I 6 A_PlayerScream;
            PLVO JK 6;
            PLVO L 6 A_NoBlocking;
            PLVO MNO 6;
            PLVO P -1;
            Stop;
            
        AltSkinXDeath:
            PLVO Q 5 A_PlayerScream;
            PLVO R 0 A_NoBlocking;
            PLVO R 5 A_SkullPop;
            PLVO STUVWX 5;
            PLVO Y -1;
            Stop;
            
    }

}

