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
new PlayerText:EmotesPTD[MAX_PLAYERS][11];
CreateEmotesPTD(playerid)
{
    EmotesPTD[playerid][0] = CreatePlayerTextDraw(playerid, 483.500, 120.000, "Emote 1");
    PlayerTextDrawLetterSize(playerid, EmotesPTD[playerid][0], 0.210, 1.099);
    PlayerTextDrawAlignment(playerid, EmotesPTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, EmotesPTD[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, EmotesPTD[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, EmotesPTD[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, EmotesPTD[playerid][0], 0);
    PlayerTextDrawFont(playerid, EmotesPTD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, EmotesPTD[playerid][0], 1);

    EmotesPTD[playerid][1] = CreatePlayerTextDraw(playerid, 483.500, 136.000, "Emote 2");
    PlayerTextDrawLetterSize(playerid, EmotesPTD[playerid][1], 0.210, 1.099);
    PlayerTextDrawAlignment(playerid, EmotesPTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, EmotesPTD[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, EmotesPTD[playerid][1], 1);
    PlayerTextDrawSetOutline(playerid, EmotesPTD[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, EmotesPTD[playerid][1], 0);
    PlayerTextDrawFont(playerid, EmotesPTD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, EmotesPTD[playerid][1], 1);

    EmotesPTD[playerid][2] = CreatePlayerTextDraw(playerid, 483.500, 152.000, "Emote 3");
    PlayerTextDrawLetterSize(playerid, EmotesPTD[playerid][2], 0.210, 1.099);
    PlayerTextDrawAlignment(playerid, EmotesPTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, EmotesPTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, EmotesPTD[playerid][2], 1);
    PlayerTextDrawSetOutline(playerid, EmotesPTD[playerid][2], 1);
    PlayerTextDrawBackgroundColor(playerid, EmotesPTD[playerid][2], 0);
    PlayerTextDrawFont(playerid, EmotesPTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, EmotesPTD[playerid][2], 1);

    EmotesPTD[playerid][3] = CreatePlayerTextDraw(playerid, 483.500, 168.000, "Emote 4");
    PlayerTextDrawLetterSize(playerid, EmotesPTD[playerid][3], 0.210, 1.099);
    PlayerTextDrawAlignment(playerid, EmotesPTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, EmotesPTD[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, EmotesPTD[playerid][3], 1);
    PlayerTextDrawSetOutline(playerid, EmotesPTD[playerid][3], 1);
    PlayerTextDrawBackgroundColor(playerid, EmotesPTD[playerid][3], 0);
    PlayerTextDrawFont(playerid, EmotesPTD[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, EmotesPTD[playerid][3], 1);

    EmotesPTD[playerid][4] = CreatePlayerTextDraw(playerid, 483.500, 184.000, "Emote 5");
    PlayerTextDrawLetterSize(playerid, EmotesPTD[playerid][4], 0.210, 1.099);
    PlayerTextDrawAlignment(playerid, EmotesPTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, EmotesPTD[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, EmotesPTD[playerid][4], 1);
    PlayerTextDrawSetOutline(playerid, EmotesPTD[playerid][4], 1);
    PlayerTextDrawBackgroundColor(playerid, EmotesPTD[playerid][4], 0);
    PlayerTextDrawFont(playerid, EmotesPTD[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, EmotesPTD[playerid][4], 1);

    EmotesPTD[playerid][5] = CreatePlayerTextDraw(playerid, 483.500, 200.000, "Emote 6");
    PlayerTextDrawLetterSize(playerid, EmotesPTD[playerid][5], 0.210, 1.099);
    PlayerTextDrawAlignment(playerid, EmotesPTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, EmotesPTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, EmotesPTD[playerid][5], 1);
    PlayerTextDrawSetOutline(playerid, EmotesPTD[playerid][5], 1);
    PlayerTextDrawBackgroundColor(playerid, EmotesPTD[playerid][5], 0);
    PlayerTextDrawFont(playerid, EmotesPTD[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, EmotesPTD[playerid][5], 1);

    EmotesPTD[playerid][6] = CreatePlayerTextDraw(playerid, 483.500, 216.000, "Emote 7");
    PlayerTextDrawLetterSize(playerid, EmotesPTD[playerid][6], 0.210, 1.099);
    PlayerTextDrawAlignment(playerid, EmotesPTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, EmotesPTD[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, EmotesPTD[playerid][6], 1);
    PlayerTextDrawSetOutline(playerid, EmotesPTD[playerid][6], 1);
    PlayerTextDrawBackgroundColor(playerid, EmotesPTD[playerid][6], 0);
    PlayerTextDrawFont(playerid, EmotesPTD[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, EmotesPTD[playerid][6], 1);

    EmotesPTD[playerid][7] = CreatePlayerTextDraw(playerid, 483.500, 232.000, "Emote 8");
    PlayerTextDrawLetterSize(playerid, EmotesPTD[playerid][7], 0.210, 1.099);
    PlayerTextDrawAlignment(playerid, EmotesPTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, EmotesPTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, EmotesPTD[playerid][7], 1);
    PlayerTextDrawSetOutline(playerid, EmotesPTD[playerid][7], 1);
    PlayerTextDrawBackgroundColor(playerid, EmotesPTD[playerid][7], 0);
    PlayerTextDrawFont(playerid, EmotesPTD[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, EmotesPTD[playerid][7], 1);

    EmotesPTD[playerid][8] = CreatePlayerTextDraw(playerid, 483.500, 248.000, "Emote 9");
    PlayerTextDrawLetterSize(playerid, EmotesPTD[playerid][8], 0.210, 1.099);
    PlayerTextDrawAlignment(playerid, EmotesPTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, EmotesPTD[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, EmotesPTD[playerid][8], 1);
    PlayerTextDrawSetOutline(playerid, EmotesPTD[playerid][8], 1);
    PlayerTextDrawBackgroundColor(playerid, EmotesPTD[playerid][8], 0);
    PlayerTextDrawFont(playerid, EmotesPTD[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, EmotesPTD[playerid][8], 1);

    EmotesPTD[playerid][9] = CreatePlayerTextDraw(playerid, 483.500, 264.000, "Emote 10");
    PlayerTextDrawLetterSize(playerid, EmotesPTD[playerid][9], 0.210, 1.099);
    PlayerTextDrawAlignment(playerid, EmotesPTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, EmotesPTD[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, EmotesPTD[playerid][9], 1);
    PlayerTextDrawSetOutline(playerid, EmotesPTD[playerid][9], 1);
    PlayerTextDrawBackgroundColor(playerid, EmotesPTD[playerid][9], 0);
    PlayerTextDrawFont(playerid, EmotesPTD[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, EmotesPTD[playerid][9], 1);

    EmotesPTD[playerid][10] = CreatePlayerTextDraw(playerid, 633.000, 105.000, "200 / 200");
    PlayerTextDrawLetterSize(playerid, EmotesPTD[playerid][10], 0.190, 0.999);
    PlayerTextDrawAlignment(playerid, EmotesPTD[playerid][10], 3);
    PlayerTextDrawColor(playerid, EmotesPTD[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, EmotesPTD[playerid][10], 1);
    PlayerTextDrawSetOutline(playerid, EmotesPTD[playerid][10], 1);
    PlayerTextDrawBackgroundColor(playerid, EmotesPTD[playerid][10], 0);
    PlayerTextDrawFont(playerid, EmotesPTD[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, EmotesPTD[playerid][10], 1);
}