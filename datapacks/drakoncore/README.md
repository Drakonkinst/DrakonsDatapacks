# DrakonCore

> **Note**: *The following information is primarily aimed at datapack developers who want to develop with DrakonCore.*

**DrakonCore** is the core library datapack used by *most* of the datapacks in this repository (with the exception of some recipe-only datapacks). It provides a number of useful functions, function "hooks", predicates, tags, and other tools to make development easier.

Most predicates and tags should be self-explanatory based on the file name and contents; however, I've tried to include additional description where it's helpful.

Functions are divided into an `api` folder and `internal` folder. **Only functions in the `api` folder should be used by other datapacks!** The internal functions are primarily to set up hooks and perform other logic that should never be called outside of the core datapack.

## Commands

DrakonCore introduces several new custom commands (using `/trigger` and scoreboards):

* `/trigger help [page]`: Displays help menu for custom commands.
* `/trigger config`: Displays config menu for admins only. Only players with the tag `dc_admin` can use this command.
* `/trigger mods`: Displays all datapacks (under Drakon's Datapacks) currently active. May not include some recipe-only datapacks that do not rely on DrakonCore.

## Hooks

DrakonCore uses **function tags** to add new event listeners: when an event is detected using DrakonCore, it calls the corresponding function tag. Other datapacks can **add their own functions** to this tag to call that function whenever that event is fired!

When creating a new datapack using the `new_datapack` utility script, all available hooks will automatically be added to the datapack. This creates a `.json` file (found at `data/drakoncore/tags/functions`) that adds a new `.mcfunction` file to the function tag (found at `/data/<namespace>/functions/hooks`). However, if these functions are empty/not used, then this only adds additional overhead to these function tags. Therefore, **any unused hooks should be removed from your datapack**.

DrakonCore offers the following hooks. Note that when Executing Entity or Executing Position are **N/A**, these values are **unspecified** and cannot be trusted to be the right value.

| Hook | Description | Executing Entity | Executing Position |
| --- | --- | --- | --- |
| `on_mob_spawn` | Run when any mob spawns. Does not include players or non-mob entities. | The mob that spawned. | The mob that spawned. |
| `check_command` | Equivalent to `player_tick`, intended to check custom commands. **Soon to be deprecated.** | The player. | The player. |
| `check_crafting` | Run the tick after crafting a Knowledge Book, indicating the player is crafting a custom recipe. **Deprecated in 1.20.** | The player. | N/A
| `config_list` | Run when `/trigger config` is called with its default argument (`1`). **Soon to be deprecated.** | The player. | N/A |
| `config` | Run when `/trigger help` is called with any argument. | The player. | N/A |
| `help_list` | Run when `/trigger help` is called with its default argument (`1`). **Soon to be deprecated.** | The player. | N/A |
| `help` | Run when `/trigger help` is called with any argument. | The player. | N/A |
| `init` | Run when `/reload` is called. Equivalent to the `#minecraft:load` function. | N/A | N/A
| `interact` | Run when a player interacts with an interaction villager. **Soon to be deprecated.** | The player. | N/A |
| `mod_info` | Displays when `/trigger mods` is run. Displays the mod's name and a link to its wiki entry. | The executing player. | N/A |
| `on_player_death` | Run when a player dies. | The player. | N/A |
| `on_player_respawn` | Run on a player who has recently respawned. | The player. | The player. |
| `player_interact` | Run when a player left-clicks or right-clicks on the player interaction entity. | The player. | N/A |
| `player_login` | Run on a player who has recently logged in. | The player. | The player. |
| `player_tick` | Run once per tick on every player. | The player. | The player. |
| `player_tick5` | Run once per 5 ticks on every player. | The player. | The player. |
| `player_tick20` | Run once per 20 ticks on every player. | The player. | The player. |
| `player_tick100` | Run once per 100 ticks on every player. | The player. | The player. |
| `tick` | Run once per tick, or 20 times per second. Equivalent to the `#minecraft:tick` function. | N/A | N/A |
| `tick5` | Run once per 5 ticks, or 4 times per second. | N/A | N/A |
| `tick20` | Run once per 20 ticks, or once per second. | N/A | N/A |
| `tick100` | Run once per 100 ticks, or once per 5 seconds. | N/A | N/A |
