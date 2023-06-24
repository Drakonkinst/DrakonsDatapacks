# Ender Knife

**Ender Knife** introduces custom enchantments that allow you to **throw** and **Blink** to your Sword

## Throwing

With the **Throwing** enchantment, using **Drop Item (Q)** instead throws your sword. (To drop the sword normally without throwing it, drag it out of your Inventory instead of pressing the Drop Item key.)

The sword flies in an arc until a mob or block, damaging any creature it hits. Throwing sword damage is equal to the sword's damage **without Enchantments or Critical Hits**, which means melee attacks tend to deal more damage per hit. It also destroys most non-creature entities, such as Paintings, Leash Knots, Boats, Minecarts, and End Crystals.

The sword cuts through certain easily-breakable blocks, such as most plants, Tripwire, Scaffolding, and Amethyst Buds. It can also break Leaves and Pointed Dripstone upon colliding with them, but is halted by these blocks.

When halted, the sword turns back into an item (which can then **embed into the ground** if **[Tool Embed](#tool-embed)** is also installed). To be consistent with other projectiles, both the sword in flight and the dropped item are **invulnerable** to Lava, Fire, explosions, and other hazards.

If your sword has **Fire Aspect** or **Sharpness**, it has a special trail effect when in flight! In addition, a Fire Aspect sword will set mobs that it strikes on fire.

## Blinking

With the **Blinking** enchantment, you will teleport to the location of your sword once it collides with something that would cause it to drop. It instead will attempt to return to your currently selected slot if empty, or will simply return to your Inventory if you no longer have an empty hand.

This teleport effect can only be used once your sword has been charged. You can charge it by slaying Endermen or by holding your sword in your mainhand while your offhand holds Ender Pearls

## Obtaining Enchantments

To obtain the Throwing and Blinking enchantments, you must first craft a **Throwing Grip** or a **Void Eye** (respectively) in a crafting bench. This uses **custom crafting**, so the output will appear as a green Knowledge Book—this should transform into the correct item upon entering your inventory.

Then, the items may be applied using custom **anvil forging**: drop the Sword and the enchantment item **on top of an anvil** (not in the anvil GUI) to combine them together. This also requires **10 experience levels** to enchant the item.

> **Warning**: These enchantments are **not part of the Vanilla enchantment system**, and are created by modifying the item's NBT (similar to an item's name and lore). Therefore, it **may be lost** if crafted with another item or used as the secondary item in an Anvil.

### Throwing Grip

The **Throwing Grip**, which grants the Throwing enchantment, is designed to be accessible from a relatively early stage.

> **Recipe**: 2x Leather, 1x Nether Quartz, 1x Feather, and 1x Stick. 

<p align="center">
  <img src="https://user-images.githubusercontent.com/11655960/230741369-167794cb-f1a5-4a05-8f57-fe0c350185a4.png">
</p>

### Void Eye

The **Void Eye**, which grants the Blinking enchantment, is designed to be a late-game upgrade that turns your Sword into the ultimate weapon. It requires five dark and mysterious materials.

> **Recipe**: 2x Obsidian, 1x Ender Chest, 1x Crying Obsidian, and 1x End Crystal. 


## Tool Embed

This datapack synergizes with **[Tool Embed](https://github.com/Drakonkinst/DrakonsDatapacks/tree/master/datapacks/dc_tool_embed)** to create an even more engaging experience:

* Thrown swords embed into almost any block they impact.
* Sneaking for 5 seconds makes your embedded swords glow, allowing you to find them more easily.

> **Note**:
>
> **For server administrators**: You can get a pre-made Ender Knife to play around with using `/function dc_enderknife:give/enderknife`!
> 
> You can also apply Throwing and Blinking using the provided item modifiers. For example, to enchant the axe in your hand with Throwing or Blinking, use `/item modify entity @s weapon dc_enderknife:enchant_throwing` and  `/item modify entity @s weapon dc_enderknife:enchant_blinking`, respectively. 

