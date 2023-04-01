# Enderman Playable Class

*This datapack is part of the [Playable Classes](https://github.com/Drakonkinst/DrakonsDatapacks/wiki/Playable-Classes) collection.*

**Enderman Playable Class** adds a playable class to the game, the **Enderman**. Enderman players gain the Enderman's powerful abilities, including **teleportation** and ability to **pick up blocks** without breaking them. However, they are **damaged by water** and have an involuntary **Danger Sense**. The Enderman's playstyle is highly mobile and ideal for builders, though it suffers when underwater or in high-risk scenarios.

Like all playable classes, this class can only be granted by server operators. Grant this class with `dc_enderman` tag, which can be added with `/tag <player> add dc_enderman` and removed with `/tag <player> remove dc_enderman`.

## Abilities

* **Silk Hands**: When sneaking with an empty hand, look at a block within reach to pick it up.
  * This does not work on blocks that cannot normally be picked up with the Silk Touch enchantment, unbreakable blocks, or container blocks (with the exception of Shulker Boxes and Ender Chests).
* **Teleport**: When sneaking while holding an Enderpearl in your mainhand for approximately 3 seconds, teleport to the targeted block (within 48 blocks) if possible.
  * **Random Teleport**: If holding an Enderpearl in your offhand, randomly teleports to a position within 16 horizontal distance instead.
    * This will always teleport you to the topmost block.
  * There is a small chance to spawn an Endermite at your last location when teleporting.
  * All fall damage you would have taken before teleporting is negated.
* **Danger Sense**: While under open sky, upon taking damage from any source, you have a small chance to involuntarily use **Random Teleport**.
* **Water Allergy**: You become poisoned by any contact with water, including rain and water cauldrons.
  * Your Danger Sense is more active when in water, and becomes more likely to trigger.
  * You are not harmed by water while under the Water Breathing effect.
* **Traveler's Truce**: Endermen are passive towards you.
