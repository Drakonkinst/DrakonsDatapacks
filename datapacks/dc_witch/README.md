# Witch Playable Class

> **Note**: *This datapack is part of the [Playable Classes](https://github.com/Drakonkinst/DrakonsDatapacks/wiki/Playable-Classes) collection.*

The **Witch Playable Class** adds a playable class to the game, the **Witch**. Witch players have two primary abilities, **Cauldron Brewing** and **Spell Casting**. The first allows them to augment potions with additional effects, while the second allows them to spend experience levels to cast powerful spells. The Witch's playstyle emphasizes methodical experimentation and preparation.

Like all playable classes, this class can only be granted by server operators. Grant this class with `dc_witch` tag, which can be added with `/tag <player> add dc_witch` and removed with `/tag <player> remove dc_witch`.

> **Warning**: The Witch's **Stellavoca** spell applies low durations of Night Vision, which causes the sky to flash similar to strobe lights. To avoid this effect per-player, server operators can add the tag `dc_noStrobe` with `/tag <player> add dc_noStrobe` to opt the player out of the flashing lights. However, the player loses 10 additional seconds of Night Vision.

## Abilities

* **Featherlight**: Your arcane nature protects you from long falls. This ability is only active while you have at least 1 experience level.
  * Sneaking while midair also disables this effect, which can be used to drop faster voluntarily.
* **Cauldron Brewing**: By lighting a fire under a water cauldron, you can create a **Witch's Cauldron** that you can use to augment potions. See the **Cauldron Brewing** section below for more information.
* **Spell Casting**: You can use a stick wrapped in Warped Fungus (**Warped Fungus on a Stick**) as a **magical wand**, which can cast spells. You will also need a **Witch's Spellbook** to select spells, which you can obtain by throwing a book into a **Witch's Cauldron**. See the Spellcasting section below for more information.
* **Village Outcast**: You are unwelcome in villages. Villagers will flee from you, their Iron Golems will attack you, and all trades they offer are extremely unfair.
* **Magical Dependency**: As a vessel of magic, you suffer Weakness I and Mining Fatigue I while you have less than 1 experience level.

## Cauldron Brewing

You can create a **Witch's Cauldron** by lighting a fire under a cauldron filled with water. This cauldron will only work while you are within 5 blocks.

To begin brewing, throw **any potion** (normal, splash, or lingering) into the cauldron. After a few seconds, the cauldron should begin steaming. Then, you may add a **potion ingredient** to the cauldron. If the potion ingredient is invalid, the cauldron will spit out the invalid ingredient. If the potion ingredient is valid, the cauldron will spit out your potion with a **new effect added**. Successfully brewing a potion will also **drain** the water cauldron by one step, allowing for a total of 3 brews before it must be refilled.

While all vanilla potion ingredients work and (mostly) serve the same purpose, there are also **19 non-vanilla potion ingredients** that allow you to obtain potion effects that **cannot normally be obtained**, for a total of **30 possible ingredients**. Discovering what exactly all of these ingredients are and experimenting with different substances is a task left to the Witch :) Positive effects (except for Instant Healing) last for **2 minutes**, while negative effects (except for Instant Damage) last for **30 seconds**. (Lingering potions, due to their mechanics, will not be consistent with these durations.)

Up to **2 additional effects** can be added to a potion, for a total of **3 effects** including the original. In general, the same potion effect does not stack—the highest level potion effect will be prioritized, followed by the highest duration. These extra effects are **unstable**, and will be lost if you use the potion in a Brewing Stand. Therefore, it is recommended to finish brewing the original potion in a Brewing Stand first before adding effects using Cauldron Brewing.

Throwing a normal book into a Witch's Cauldron will also grant you the **Witch's Spellbook**.

## Spell Casting

You can **cast spells** by right-clicking with a Warped Fungus on a Stick. Each spell consumes a certain number of **experience levels**, and also **disables** your spellcasting powers for a short time. **You need at least 1 experience level** to cast any spell. The more powerful the spell, the more levels it requires and the longer cooldown it has. In order from least to most powerful, the available spells are:

* **Stellavoca** (Free, 5 second cooldown): Summon a swarm of fireflies which cast light on the surrounding area for a short period. Cast on a lantern to create a **Firefly Lantern**, which permanently attracts fireflies.
  * Firefly Lantern particles appear from the center of the lantern, instead of midair. It is recommended to be as close as possible to the lantern to cast this successfully.
  * Firefly Lanterns cannot be created within 5 blocks of another Firefly Lantern.
  * Breaking a Firefly Lantern destroys its effect, and the lantern must be enchanted again if it is placed later on.
* **Accio** (1 Level, 15 second cooldown): Summon all dropped items in the direction you are facing (within approximately 40 blocks) to you.
  * This has special interactions with [**Tool Embed**](https://github.com/Drakonkinst/DrakonsDatapacks/tree/master/datapacks/dc_tool_embed) and [**Throwable Axes**](https://github.com/Drakonkinst/DrakonsDatapacks/tree/master/datapacks/dc_throwable_axes)!
* **Incendio**: (1 Level, 15 second cooldown): Create a small flame on the targeted block (within 4 blocks). This spell can also light Campfires and Candles, and ignites Creepers where the flame is set.
* **Wingardium Leviosa** (3 Levels, 30 second cooldown): Make the targeted mob levitate temporarily.
* **Caelfuge** (8 Levels, 60 second cooldown): A powerful, last-resort spell that lets you take to the skies.
