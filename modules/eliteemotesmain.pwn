/*
     ELiTE Emote System (Fivem inspired emote system for SA-MP)

    Author: @ashwinedev
    Version: 1.0
    Date: July 16, 2025

    ▸ Do not remove this credit.
    ▸ You are allowed to rename files.
    ▸ You are allowed to modify the code.
    ▸ You are NOT allowed to sell this system.

    Developed for SA-MP by Elite Devs Team.
    Discord : https://discord.gg/ScjWN9Bkz8

    For Paid Sa-MP, Website, App Development Contact Us!
    Website : https://elitedevs.in
*/
#include "modules/eliteemotes"
#include "modules/ui_eliteemotestd"       
#include "modules/ui_eliteemotesptd" 

YCMD:e(playerid, params[], help)
    {
        //enable if you need to restrict emote using by players in this cases

        // if(AccountData[playerid][pKnockdown]) return ShowTDN(playerid, NOTIFICATION_ERROR, "You cannot do this right now!");
        // if(IsPlayerStunned(playerid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "You cannot do this right now!");
        // if(AccountData[playerid][pCuffed]) return ShowTDN(playerid, NOTIFICATION_ERROR, "You cannot do this right now!");
        // if(OJailData[playerid][jailed]) return ShowTDN(playerid, NOTIFICATION_ERROR, "You cannot do this right now!");
        // if(AccountData[playerid][pBlindfolded]) return ShowTDN(playerid, NOTIFICATION_ERROR, "You cannot do this right now!");
        // if(AccountData[playerid][pInEvent]) return ShowTDN(playerid, NOTIFICATION_ERROR, "You cannot do this right now!");
        // if(pPorterCarrying[playerid]) return ShowTDN(playerid, NOTIFICATION_ERROR, "You cannot do this right now!");

    static animstr[128];
    if(sscanf(params, "s[128]", animstr))
    {
        for(new x; x < 24; x++)
        {
            TextDrawShowForPlayer(playerid, EmotesTD[x]);
        }

        for(new x; x < 10; x++)
        {
            PlayerTextDrawSetString(playerid, EmotesPTD[playerid][x], g_AnimDetails[x][e_AnimationName]);

            PlayerTextDrawShow(playerid, EmotesPTD[playerid][x]);
        }
        animPage[playerid] = 1;

        PlayerTextDrawSetString(playerid, EmotesPTD[playerid][10], sprintf("%02d / %02d", animPage[playerid], sizeof(g_AnimDetails)/10 + 1));
        PlayerTextDrawShow(playerid, EmotesPTD[playerid][10]);
        SelectTextDraw(playerid, 0xff91a4cc);
        return 1;
    }

    if(!strcmp("x", animstr, true))
    {
        gPlayerUsingLoopingAnim[playerid] = false;
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        RemovePlayerAttachedObject(playerid, 9);
        return StopRunningAnimation(playerid);
    }
    
    else if(!strcmp("Pee", animstr, true)) 
    {
        gPlayerUsingLoopingAnim[playerid] = true;
        return SetPlayerSpecialAction(playerid, 68);
    }
else if(!strcmp("HandsUp", animstr, true)) 
{
    gPlayerUsingLoopingAnim[playerid] = true;
    return SetPlayerSpecialAction(playerid, SPECIAL_ACTION_HANDSUP);
}
else if(!strcmp("Dance1", animstr, true)) 
{
    gPlayerUsingLoopingAnim[playerid] = true;
    return SetPlayerSpecialAction(playerid, SPECIAL_ACTION_DANCE1);
}
else if(!strcmp("Dance2", animstr, true)) 
{
    gPlayerUsingLoopingAnim[playerid] = true;
    return SetPlayerSpecialAction(playerid, SPECIAL_ACTION_DANCE2);
}
else if(!strcmp("Dance3", animstr, true)) 
{
    gPlayerUsingLoopingAnim[playerid] = true;
    return SetPlayerSpecialAction(playerid, SPECIAL_ACTION_DANCE3);
}
else if(!strcmp("Dance4", animstr, true)) 
{
    gPlayerUsingLoopingAnim[playerid] = true;
    return SetPlayerSpecialAction(playerid, SPECIAL_ACTION_DANCE4);
}
else if(!strcmp("Carry", animstr, true)) 
{
    gPlayerUsingLoopingAnim[playerid] = true;
    return SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
}
    }
GetListAnimName(playerid, animstr);
return 1;


YCMD:eprop(playerid, params[], help)
{
    if(AccountData[playerid][pKnockdown]) return ShowTDN(playerid, NOTIFICATION_ERROR, "You can't do this right now!");
    if(IsPlayerStunned(playerid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "You can't do this right now!");
    if(AccountData[playerid][pInEvent]) return ShowTDN(playerid, NOTIFICATION_ERROR, "You can't do this right now!");
    if(pPorterCarrying[playerid]) return ShowTDN(playerid, NOTIFICATION_ERROR, "You can't do this right now!");

    static animstr[128];
    if(sscanf(params, "s[128]", animstr)) return SUM(playerid, "/eprop [animation name]");

    SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
    RemovePlayerAttachedObject(playerid, 9);
    StopRunningAnimation(playerid);
    
    if(!strcmp("Box", animstr, true)) 
    {
        gPlayerUsingLoopingAnim[playerid] = true;
        SetPlayerAttachedObject(playerid, 9, 1271, 5, 0.094000, 0.164999, 0.164000, 6.700001, 15.199984, 8.599995, 0.592999, 0.513999, 0.592000, 0, 0);
        return SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
    }
    else if(!strcmp("Box2", animstr, true)) 
    {
        gPlayerUsingLoopingAnim[playerid] = true;
        SetPlayerAttachedObject(playerid, 9, 2814, 1, 0.083000, 0.297000, -0.029000, -91.200042, 32.800014, 0.000000, 1.000000, 1.000000, 1.000000, 0, 0);
        return SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
    }
    else if(!strcmp("Box3", animstr, true)) 
    {
        gPlayerUsingLoopingAnim[playerid] = true;
        SetPlayerAttachedObject(playerid, 9, 19638, 1, -0.000000, 0.527000, -0.018999, 87.099983, 87.599990, 0.000000, 1.000000, 1.000000, 1.853998, 0, 0);
        return SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
    }
    else if(!strcmp("Ban", animstr, true)) 
    {
        gPlayerUsingLoopingAnim[playerid] = true;
        SetPlayerAttachedObject(playerid, 9, 1096, 6, 0.046000, 0.183000, -0.197999, 0.000000, -4.899998, 10.800001, 0.703000, 0.579000, 0.548999);
        return SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
    }
    else if(!strcmp("Bumper", animstr, true)) 
    {
        gPlayerUsingLoopingAnim[playerid] = true;
        SetPlayerAttachedObject(playerid, 9, 1159, 6, 0.423999, 0.407999, -1.410999, -31.499994, 80.799987, 12.599996, 1.000000, 1.000000, 1.000000);
        return SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
    }
    else if(!strcmp("Bumper2", animstr, true)) 
    {
        gPlayerUsingLoopingAnim[playerid] = true;
        SetPlayerAttachedObject(playerid, 9, 1185, 6, 0.268999, -0.135999, -1.133999, 0.000000, 84.800003, -15.300001, 1.000000, 1.000000, 1.000000);
        return SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
    }
    else if(!strcmp("Toolbox", animstr, true)) 
    {
        gPlayerUsingLoopingAnim[playerid] = true;
        SetPlayerAttachedObject(playerid, 9, 19921, 6, 0.064000, 0.028000, 0.009999, 102.400039, 0.000000, -94.300010, 1.000000, 1.000000, 1.000000);
        return SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
    }
    else if(!strcmp("Suitcase", animstr, true)) 
    {
        gPlayerUsingLoopingAnim[playerid] = true;
        SetPlayerAttachedObject(playerid, 9, 19624, 6, 0.061000, 0.012000, 0.000000, 0.000000, -100.799995, 0.000000, 1.000000, 1.000000, 1.000000);
        return SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
    }

    GetListPropAnimName(playerid, animstr);
    return 1;
}

YCMD:eshared(playerid, params[], help)
{
    if(AccountData[playerid][pKnockdown]) return ShowTDN(playerid, NOTIFICATION_ERROR, "You can't do this right now!");
    if(IsPlayerStunned(playerid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "You can't do this right now!");
    if(AccountData[playerid][pInEvent]) return ShowTDN(playerid, NOTIFICATION_ERROR, "You can't do this right now!");
    if(pPorterCarrying[playerid]) return ShowTDN(playerid, NOTIFICATION_ERROR, "You can't do this right now!");

    static otherid, animstr[128];
    if(sscanf(params, "ds[128]", otherid, animstr)) return SUM(playerid, "/eshared [playerid] [animation name]");

    if(otherid == playerid) return ShowTDN(playerid, NOTIFICATION_ERROR, "You can't do this to yourself!");
    if(!IsPlayerConnected(otherid) && !AccountData[otherid][pSpawned]) return ShowTDN(playerid, NOTIFICATION_ERROR, "That player hasn't spawned or is not connected to the server!");

    if(!IsPlayerNearPlayer(playerid, otherid, 2.0)) return ShowTDN(playerid, NOTIFICATION_ERROR, "You are not close enough to that player!");
    if(pPorterCarrying[otherid]) return ShowTDN(playerid, NOTIFICATION_ERROR, "That player is currently busy!");

    SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
    RemovePlayerAttachedObject(playerid, 9);
    StopRunningAnimation(playerid);

    SetPlayerSpecialAction(otherid, SPECIAL_ACTION_NONE);
    RemovePlayerAttachedObject(otherid, 9);
    StopRunningAnimation(otherid);

    if(!strcmp("Kiss", animstr, true)) 
    {
        AccountData[otherid][pESharedType] = 1;
        AccountData[otherid][pESharedOfferer] = playerid;
        SendClientMessageEx(otherid, Y_SERVER, "(Emote Shared) "RED"%s (%d) "WHITE"request "ORANGE"'%s' "WHITE"to you, use "CMDEA"'/accept eshared' "WHITE"to proceed.", AccountData[playerid][pName], playerid, animstr);
    }

    else if(!strcmp("Kiss2", animstr, true)) 
    {
        AccountData[otherid][pESharedType] = 2;
        AccountData[otherid][pESharedOfferer] = playerid;

        SendClientMessageEx(otherid, Y_SERVER, "(Emote Shared) "RED"%s (%d) "WHITE"request "ORANGE"'%s' "WHITE"to you, use "CMDEA"'/accept eshared' "WHITE"to proceed.", AccountData[playerid][pName], playerid, animstr);
    }
    else if(!strcmp("Kiss3", animstr, true)) 
    {
        AccountData[otherid][pESharedType] = 3;
        AccountData[otherid][pESharedOfferer] = playerid;
        SendClientMessageEx(otherid, Y_SERVER, "(Emote Shared) "RED"%s (%d) "WHITE"request "ORANGE"'%s' "WHITE"to you, use "CMDEA"'/accept eshared' "WHITE"to proceed.", AccountData[playerid][pName], playerid, animstr);
    }
    else if(!strcmp("Gift", animstr, true)) 
    {
        AccountData[otherid][pESharedType] = 4;
        AccountData[otherid][pESharedOfferer] = playerid;
        SendClientMessageEx(otherid, Y_SERVER, "(Emote Shared) "RED"%s (%d) "WHITE"request "ORANGE"'%s' "WHITE"to you, use "CMDEA"'/accept eshared' "WHITE"to proceed.", AccountData[playerid][pName], playerid, animstr);
    }
    else if(!strcmp("Pleasure", animstr, true)) 
    {
        AccountData[otherid][pESharedType] = 5;
        AccountData[otherid][pESharedOfferer] = playerid;
        SendClientMessageEx(otherid, Y_SERVER, "(Emote Shared) "RED"%s (%d) "WHITE"request "ORANGE"'%s' "WHITE"to you, use "CMDEA"'/accept eshared' "WHITE"to proceed.", AccountData[playerid][pName], playerid, animstr);
    }
    else if(!strcmp("Pleasure2", animstr, true)) 
    {
        AccountData[otherid][pESharedType] = 6;
        AccountData[otherid][pESharedOfferer] = playerid;
        SendClientMessageEx(otherid, Y_SERVER, "(Emote Shared) "RED"%s (%d) "WHITE"request "ORANGE"'%s' "WHITE"to you, use "CMDEA"'/accept eshared' "WHITE"to proceed.", AccountData[playerid][pName], playerid, animstr);
    }
    else if(!strcmp("Greet", animstr, true)) 
    {
        AccountData[otherid][pESharedType] = 7;
        AccountData[otherid][pESharedOfferer] = playerid;
        SendClientMessageEx(otherid, Y_SERVER, "(Emote Shared) "RED"%s (%d) "WHITE"request "ORANGE"'%s' "WHITE"to you, use "CMDEA"'/accept eshared' "WHITE"to proceed.", AccountData[playerid][pName], playerid, animstr);
    }
    else if(!strcmp("Greet2", animstr, true)) 
    {
        AccountData[otherid][pESharedType] = 8;
        AccountData[otherid][pESharedOfferer] = playerid;
        SendClientMessageEx(otherid, Y_SERVER, "(Emote Shared) "RED"%s (%d) "WHITE"request "ORANGE"'%s' "WHITE"to you, use "CMDEA"'/accept eshared' "WHITE"to proceed.", AccountData[playerid][pName], playerid, animstr);
    }
    else if(!strcmp("Greet3", animstr, true)) 
    {
        AccountData[otherid][pESharedType] = 9;
        AccountData[otherid][pESharedOfferer] = playerid;
        SendClientMessageEx(otherid, Y_SERVER, "(Emote Shared) "RED"%s (%d) "WHITE"request "ORANGE"'%s' "WHITE"to you, use "CMDEA"'/accept eshared' "WHITE"to proceed.", AccountData[playerid][pName], playerid, animstr);
    }
    else if(!strcmp("Greet4", animstr, true)) 
    {
        AccountData[otherid][pESharedType] = 10;
        AccountData[otherid][pESharedOfferer] = playerid;
        SendClientMessageEx(otherid, Y_SERVER, "(Emote Shared) "RED"%s (%d) "WHITE"request "ORANGE"'%s' "WHITE"to you, use "CMDEA"'/accept eshared' "WHITE"to proceed.", AccountData[playerid][pName], playerid, animstr);
    }
    else if(!strcmp("Greet5", animstr, true)) 
    {
        AccountData[otherid][pESharedType] = 11;
        AccountData[otherid][pESharedOfferer] = playerid;
        SendClientMessageEx(otherid, Y_SERVER, "(Emote Shared) "RED"%s (%d) "WHITE"request "ORANGE"'%s' "WHITE"to you, use "CMDEA"'/accept eshared' "WHITE"to proceed.", AccountData[playerid][pName], playerid, animstr);
    }
    else if(!strcmp("Greet6", animstr, true)) 
    {
        AccountData[otherid][pESharedType] = 12;
        AccountData[otherid][pESharedOfferer] = playerid;
        SendClientMessageEx(otherid, Y_SERVER, "(Emote Shared) "RED"%s (%d) "WHITE"request "ORANGE"'%s' "WHITE"to you, use "CMDEA"'/accept eshared' "WHITE"to proceed.", AccountData[playerid][pName], playerid, animstr);
    }
    else if(!strcmp("Greet7", animstr, true)) 
    {
        AccountData[otherid][pESharedType] = 13;
        AccountData[otherid][pESharedOfferer] = playerid;
        SendClientMessageEx(otherid, Y_SERVER, "(Emote Shared) "RED"%s (%d) "WHITE"request "ORANGE"'%s' "WHITE"to you, use "CMDEA"'/accept eshared' "WHITE"to proceed.", AccountData[playerid][pName], playerid, animstr);
    }
    else
    {
        return ShowTDN(playerid, NOTIFICATION_ERROR, "The shared emote is not registered!");
    }
      ShowTDN(playerid, NOTIFICATION_INFO, "You have submitted a shared emote request, please wait.");
      return 1;
    }
YCMD:elist(playerid, params[], help)
{
    Dialog_Show(playerid, "EmoteList", DIALOG_STYLE_LIST, ""RED"ELiTE DEVELOPMENT "WHITE"- Daftar Emote", "Emotes\n"GRAY"Emotes Property\nEmotes Shared", "Select", "Cancel");
	return 1;
}


GetListAnimName(playerid, const name[])
{
    for(new i; i < sizeof(g_AnimDetails); i ++)
    {
        if(!strcmp(g_AnimDetails[i][e_AnimationName], name, true))
        {
            gPlayerUsingLoopingAnim[playerid] = true;
            return ApplyAnimation(playerid, g_AnimDetails[i][e_AnimLib], g_AnimDetails[i][e_AnimName], g_AnimDetails[i][e_AnimDelta], g_AnimDetails[i][e_AnimLoop], g_AnimDetails[i][e_AnimLX], g_AnimDetails[i][e_AnimLY], g_AnimDetails[i][e_AnimFreeze], g_AnimDetails[i][e_AnimTime], true);
        }
    }
    ShowTDN(playerid, NOTIFICATION_ERROR, "The animation name is not registered!");
	return 1;
}

GetListPropAnimName(playerid, const name[])
{
    for(new i; i < sizeof(g_AnimPropDetails); i ++)
    {
        if(!strcmp(g_AnimPropDetails[i][e_AnimationPropName], name, true))
        {
            gPlayerUsingLoopingAnim[playerid] = true;
            SetPlayerAttachedObject(playerid, g_AnimPropDetails[i][e_AnimPropIndex], g_AnimPropDetails[i][e_AnimPropModel], g_AnimPropDetails[i][e_AnimPropBone], g_AnimPropDetails[i][e_AnimPropOffX], g_AnimPropDetails[i][e_AnimPropOffY], g_AnimPropDetails[i][e_AnimPropOffZ], g_AnimPropDetails[i][e_AnimPropRotX], g_AnimPropDetails[i][e_AnimPropRotY], g_AnimPropDetails[i][e_AnimPropRotZ], g_AnimPropDetails[i][e_AnimPropScaX], g_AnimPropDetails[i][e_AnimPropScaY], g_AnimPropDetails[i][e_AnimPropScaZ], g_AnimPropDetails[i][e_AnimPropMatCol0], g_AnimPropDetails[i][e_AnimPropMatCol1]);
            return ApplyAnimation(playerid, g_AnimPropDetails[i][e_AnimPropLib], g_AnimPropDetails[i][e_AnimPropName], g_AnimPropDetails[i][e_AnimPropDelta], g_AnimPropDetails[i][e_AnimPropLoop], g_AnimPropDetails[i][e_AnimPropLX], g_AnimPropDetails[i][e_AnimPropLY], g_AnimPropDetails[i][e_AnimPropFreeze], g_AnimPropDetails[i][e_AnimPropTime], true);
        }
    }
    ShowTDN(playerid, NOTIFICATION_ERROR, "The name of the animation is not registered!");
	return 1;
}

SyncAnimPage(playerid) 
{
    if(animPage[playerid] * 10 >= sizeof(g_AnimDetails)) 
    {
        for(new i; i < 10; i++) 
        {
            new index = (animPage[playerid] * 10) + i - 10;
            if (index >= sizeof(g_AnimDetails)) 
            {
                PlayerTextDrawHide(playerid, EmotesPTD[playerid][i]);
            }
        }
    }
    PlayerTextDrawSetString(playerid, EmotesPTD[playerid][10], sprintf("%02d / %02d", animPage[playerid], sizeof(g_AnimDetails)/10 + 1));
    return 1;
}
