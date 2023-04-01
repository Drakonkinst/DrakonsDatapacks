# Midas Playable Class

*This datapack is part of the [Playable Classes](https://github.com/Drakonkinst/DrakonsDatapacks/wiki/Playable-Classes) collection.*

**Midas Playable Class** adds a playable class to the game, **Midas**. Midas players are cursed to turn anything they hold or wear into **gold**, which is only reversed by **water**. However, they gain **powerful buffs** through the use of their Midas-touched gear and may also turn other creatures' gear into gold. While gold is inherently fragile, Midas players can take advantage of its flexibility to open up new enchanting opportunities and use their wealth to achieve new heights.

Like all playable classes, this class can only be granted by server operators. Grant this class with `dc_midas` tag, which can be added with `/tag <player> add dc_midas` and removed with `/tag <player> remove dc_midas`.

## Abilities

* **Shiiiny**: All Piglins (even the more brutish variants) adore you and will never become hostile towards you.
* **Golden Touch**: Holding or wearing certain items makes them become **Midas-touched**, transforming into their **golden variant**.
  * This includes the following items:
    * Any armor, tool, and sword, including horse armor.
    * Foodstuffs with golden variants.
    * Various Copper, Iron, Diamond, and Netherite-based items, including ore, raw ore, ingots, nuggets, and full blocks.
  * Midas-touched item data is stored in the item's **NBT**, and thus is preserved using the same rules as **item names** and **item lore**. Certain actions such as crafting with the item or using it as the secondary item in an anvil may **irreversibly** remove the Midas-touched data, making the item permanently gold.
  * Items that are already gold cannot be Midas-touched, and are not considered Midas-touched items.
  * Armor and tool durability percentage remains constant when becoming Midas-touched, rounded down.
* **Water Reversal**: Submerging any Midas-touched item into **water**, including any currently held or worn item by a creature, **reverses** the Midas touch and returns the item back to its original state.
  * This also occurs in **rain** (unless holding an **umbrella**) and in Water Cauldrons.
  * Armor and tool **durability percentage** remains constant when reversed by water, rounded up.
* **Midas's Greed**: You gain beneficial status effects when using Midas-touched gear.
  * You have **Regeneration** when wearing at least two pieces of Midas-touched armor.
  * You gain **20% damage resistance** from all sources when wearing a full set of Midas-touched armor.
  * You have **Haste II** while wielding a Midas-touched item in your **mainhand**.
* **Midas's Revenge**: Striking any armor-wearing creature with your bare fist has a **20%** chance to **Midas-touch** their individual armor pieces. In addition, when struck by another player you have a 5% chance to **Midas-touch** their weapon.
* **Midas's Prosperity**: All Absorption effects stack, allowing you to replenish or gain more Absorption Hearts in increments of **2 hearts**. In addition, all received Absorption effects last for at least **5 minutes**.
  * Example: If you have more than 2 Absorption hearts but less than 4, eating a Golden Apple replenishes this to **4 Absorption hearts**. Eating another Golden Apple results in **6 Absorption hearts** total.
  * Up to **10 Absorption hearts** (a full additional bar of health) can be gained in this manner.
  * **Golden Carrots** do not increase your Absorption level, but refresh the duration of the Absorption effect and replenish Absorption Hearts up to the nearest **2 hearts**.
* **Golden Apple Enchantment**: You can throw a Golden Apple on top of an Enchantment Table and **expend 30 levels** to turn it into an **Enchanted Golden Apple**.
  * Midas-touched Enchanted Golden Apples lose their enchanted status permanently when reversed by water, but drop **experience** (slightly less than 30 levels) if reversed in this manner.
