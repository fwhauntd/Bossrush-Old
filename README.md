# BO3 Bossrush – Legacy Version & Timer

This repo includes two key things for Black Ops III Zombies:

1. **Bossrush Legacy Mod** – A custom version of the Shadows of Evil bossrush that improves speedrun potential with extra mobility and round control.
2. **Boss Rush Timer** – An in-game injected timer built for full boss run timing across all major BO3 Zombies maps.

---

## 🧟‍♂️ Legacy Bossrush (Shadows of Evil)

This is the **older version** of the Bossrush mod for Shadows of Evil. It allows you to leave the Pack-a-Punch room and manipulate the game in ways the Steam Workshop version doesn't allow. This mod enables:

- Breaking all doors (faster routing)
- Calling the tram to faster locations
- Changing rounds to regain Beast Modes

This version is **only recommended for SoE (and possibly Gorod Krovi)**. For all other maps, use the newer Steam version:  
➡️ https://steamcommunity.com/sharedfiles/filedetails/?id=1841533045

---

### 🛠️ Legacy Mod Installation

1. Go to:  
   `C:\Program Files (x86)\Steam\steamapps\common\Call of Duty Black Ops III`

2. Create a folder named `mods` (if it doesn’t already exist).

3. Extract the mod files into that folder — you should see a folder named `2372198694`.

> Alternate method:  
> In Steam → right-click Black Ops III → Manage → Browse Local Files → continue from step 2.

---

### 🧪 Run Setup (SoE Legacy Guide)

1. From spawn, turn around and go through the top door.
2. Activate Beast Mode, open doors, and unlock all rifts.
3. Go to Nero’s Room → interact with the floating book.
4. Head to the subway → pick up the flag → place it at spawn.
5. Return to Nero’s Room and start killing zombies (for spawn manipulation).
6. End the round to regain Beast Mode.
7. Move the tram to Waterfront.
8. Use the Rift to return to PaP → start the boss fight.

---

### 🏃‍♂️ Run Execution (SoE)

1. Pick up Arnies + light weapon (RK5/Bloodhound).
2. Grab Fatal Contraption, pop it near the ritual podium.
3. Get Pop Shocks from the Gobblegum machine.
4. Start the boss fight. Use Arnie, grab Death Machine, throw another Arnie, kill Shadowman.
5. After the "kill", go through Canals Rift → enter Beast Mode.
6. Shock all 3 boxes:
   - **Canals**: Top of stairs near tram door  
   - **Waterfront**: Same spot as Canals, mirrored  
   - **Footlight**: Between the doors
7. Exit Beast → call tram → use Pop Shocks to kill Margwa → re-enter Beast Mode
8. Shock all 3 Keepers in the center → exit Beast Mode  
9. **Timer stops on the white flash**

---

### 🔐 Credits (Legacy Version)

Originally discovered and used by:

- **Fwhauntd** *(myself)*
- **JJbros**
- **zTrixS**
- **Luisete2105**
- **Ultimate-Slay577**

This version was originally shut down by the previous mod owner and never made public. We’re now releasing it here so everyone has access and newer players can compete without feeling left behind.

---

## ⏱️ BO3 Boss Rush Timer

An **in-game injected timer** that tracks boss fight durations across:

- Shadows of Evil  
- Der Eisendrache  
- Zetsubou No Shima  
- Gorod Krovi  
- Revelations

Made specifically for **speedruns**, **challenge runs**, or **full bossrush attempts**. No manual starts/stops. Fully automatic.

---

### 🧰 Timer Features

- Fully injected — runs directly inside the game  
- Starts and stops automatically with boss triggers  
- Designed to stay out of your way — minimal, clean UI  
- Full five-map run support (SoE → Rev)

---

### ⚙️ Timer Setup (Serious Compiler)

1. **Download Serious Compiler**  
   ➡️ https://github.com/shiversoftdev/t7-compiler/releases/tag/current

2. Run the `.exe` installer — it installs the t7 compiler and a Visual Studio Code extension.

3. Make sure **Visual Studio Code** is installed before running the installer.

4. In VSCode:
   - Open Keybind Settings  
   - Search for: `Run Test Task In...`  
   - Bind it to a key (e.g. F6)

5. Load up the mod in BO3

6. Press the key you just bound to inject the timer into the game.

> ✅ Tested on the Steam version of BO3 And the One Linked, any others that are NOT these 2 will NOT work as they are built for the OFFICAL versions and not fake ones.

---

### 🙏 Timer Credits

- **Luisete2105** – Helped me understand core systems and guided me through everything. Genuinely the reason this timer works. Without him, I wouldn’t have finished this.
- **Serious** – Creator of the t7 compiler + injection tooling:  
  https://github.com/shiversoftdev/t7-compiler
- **Fwhauntd** (me) – Timer logic, boss state detection, UI, injection, and final implementation.

---

Thanks for checking it out. Feel free to open an issue or suggest improvements.
