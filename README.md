# 🎭 Elite Emote System for SA-MP

A **modular**, **animated**, and **easy-to-integrate emote (animation) system** for SA-MP using TextDraws.  
Designed with clean UI, categorized browsing, and scrollable emote pages — perfect for modern RP servers or any server wanting a high-quality emote selection feature.

> 💡 Developed with flexibility in mind. Although you can copy-paste it directly, some parts (like `ShowTDN`, `pKnockdown`, or `pPorterCarrying`) are specific to our server and **must be edited** to fit your gamemode.

---

## 🌟 Features

- ✅ **Modular structure**: Easy to plug into any gamemode  
- 🧠 **Categorized animations**: Clean data structure for easy management  
- 🎮 **TextDraw UI**: Smooth per-player and global TextDraws for interaction  
- 🔁 **Pagination system**: Scroll through emotes using next/previous buttons  
- 💬 **Player commands**: Integrated with `yCMD` for clean command syntax  
- 📦 **Lightweight** and well-commented code for easy learning and editing

---

## 🛠 Technologies Used

- 🔹 Language: PAWN  
- 🔹 Command Processor: y_commands (yCMD) 
- 🔹 TextDraw UI (Global + Per-player)  
- 🔹 Struct-based animation storage (`g_AnimDetails` with `e_AnimationStuff`)  
- 🔹 Modular file design for integration flexibility

---

## 🧩 Dependency: yCMD Command Processor

This system uses the `y_commands` plugin by Zeex for command handling.

### ➕ What is yCMD?

- A powerful, fast, and modern alternative to `OnPlayerCommandText`  
- Clean syntax and great for performance  
- Used in many modern YSI-based gamemodes

### 🔧 Installation Steps:

1. Download from GitHub:  

2. Copy the files:
   - `y_commands.inc` → `pawno/includes/`
   - `y_commands.dll` or `y_commands.so` → `plugins/`

3. Add to `server.cfg`:
   ```
   plugins y_commands
   ```

4. Include in your scripts:
   ```pawn
   #include <y_commands>
   ```

---

## 📁 File Structure

```
modules/
├── eliteemotes.pwn           // Animation enums and constants
├── eliteemotesmain.pwn       // Commands and core logic (uses yCMD)
├── ui_eliteemotestd.pwn      // Global TextDraws
├── ui_eliteemotesptd.pwn     // Per-player TextDraws
├── README.md                 // This file
```

---

## ✅ How to Use

### 1. Include in your gamemode:

```pawn
#include "modules/eliteemotesmain"
```

---

### 2. In `OnGameModeInit()`:

```pawn
public OnGameModeInit()
{
    CreateEmotesPTD(playerid);
    CreateEmotesTD(playerid);
}
```

---

### 3. In `OnPlayerClickTextDraw(playerid, Text:clickedid)`:

```pawn
else if(clickedid == EmotesTD[21])
{
    if(animPage[playerid] * 10 < sizeof(g_AnimDetails)) 
    {
        animPage[playerid]++;
        SyncAnimPage(playerid);
        for (new i; i < 10; i++)
        {
            new index = (animPage[playerid] * 10) + i - 10;
            if (index < 0 || index >= sizeof(g_AnimDetails)) continue;
            PlayerTextDrawSetString(playerid, EmotesPTD[playerid][i], g_AnimDetails[index][e_AnimationName]);
        }
    }
}
else if(clickedid == EmotesTD[22])
{
    if(animPage[playerid] > 1) 
    {
        animPage[playerid]--;
        SyncAnimPage(playerid);
        for (new i; i < 10; i++) 
        {
            new index = (animPage[playerid] * 10) + i - 10;
            if (index < 0 || index >= sizeof(g_AnimDetails)) continue;
            PlayerTextDrawSetString(playerid, EmotesPTD[playerid][i], g_AnimDetails[index][e_AnimationName]);
            PlayerTextDrawShow(playerid, EmotesPTD[playerid][i]);
        }
    }
}
else if(clickedid == EmotesTD[23]) 
{
    for(new x; x < 24; x++)
    {
        TextDrawHideForPlayer(playerid, EmotesTD[x]);
    }
    for(new x; x < 11; x++)
    {
        PlayerTextDrawHide(playerid, EmotesPTD[playerid][x]);
    }
    animPage[playerid] = 1;
    CancelSelectTextDraw(playerid);
}
```

---

## ℹ️ Notes

- This script uses `ShowTDN(...)` for error messages — replace it with your own notify system if needed.
- Variables like `AccountData[playerid][pKnockdown]` or `pPorterCarrying[playerid]` are custom — you **must** modify or remove these for compatibility with your server.
- These are code **snippets** — not plug-and-play — structure is given to help **you integrate** into your existing gamemode.
- Can be integrated **directly in your gamemode** if desired — modular format is just for clarity and easy navigation.

---


---

✅ **Use it, improve it, credit it — but don't sell it.**
