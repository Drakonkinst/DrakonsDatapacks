# Wishing Well

**Wishing Well** is an add-on for the **[Easter Egg Hunt](https://github.com/Drakonkinst/DrakonsDatapacks/tree/master/datapacks/dc_easter_hunt)** datapack that allows collected Easter Eggs to be broken to receive shiny loot!

Throw any Easter Egg into the water to begin cracking it. After a short delay, the Easter Egg bursts into a shower of items. The rarity of the items does not correspond with the Egg's rarity whatsoever, so extremely rare eggs drop the same loot as common ones. Each Egg provides 5 pieces of loot, with each loot item drawing from the following loot tables:

* 0.05% chance to be **Epic** loot
  * Nether Star
  * Enchanted Golden Apple
  * Netherite Ingot
  * Any of the 16 Music Discs
  * Totem of Undying
  * With a 5% chance to additionally spawn an **Allay**
* ~1% chance to be **Rare** loot
  * Golden Apple
  * Netherite Scrap
  * Diamond
  * With a 25% chance to additionally spawn a **Chicken**
* ~20% to be **Uncommon** loot
  * Emerald
  * Crying Obsidian
  * Sea Lantern
  * Golden Carrot
* ~79% chance to be **Common** loot
  * Gold Ingot
  * Iron Ingot
  * Coal
  * Lapis Lazuli
  * Redstone
  * Glowstone Dust
  * Apple
  * Carrot
  * Obsidian

## For Probability Nerds

Note the probabilities described above are not precise: the datapack checks the chance for each stage sequentially and independently, from most rare to least rare, and stops early if the check succeeds. It spawns a Common loot only if every other check fails. This means the probabilities are closer to:

* **Epic**: 0.05% (Unchanged)
* **Rare**: (100% - 0.05%) \* 1% = 0.9995%
* **Uncommon**: (100% - 0.05%) \* (100% - 1%) \* 20% = 19.7901%
* **Common**: (100% - 0.05%) \* (100% - 1%) \* (100% - 20%) = 79.1604%

Note that each egg constitutes 5 rolls of the loot. Therefore, the probability of at least one Epic loot from an egg is (1 - 0.9995^5) = 0.25%. The probability of at least one Allay from an egg is (1 - (0.9995 + 0.0005 * 0.95)^5) = 0.0125%.
