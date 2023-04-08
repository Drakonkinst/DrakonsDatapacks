# Throwable Axes

![image](https://user-images.githubusercontent.com/11655960/230739777-56996002-38af-438a-8fdb-ca1b5fafc410.png)

**Throwable Axes** introduces custom enchantments that allow you to **throw** and **recall** your Axe, just like God of War's [Leviathan Axe](https://godofwar.fandom.com/wiki/Leviathan_Axe)!

## Throwing

With the **Throwing** enchantment, using **Drop Item (Q)** instead throws your axe. (To drop the axe normally without throwing it, drag it out of your Inventory instead of pressing the Drop Item key.)

The axe flies in an arc until a mob or block, damaging any creature it hits. Throwing axe damage is equal to the axe's damage **without Enchantments or Critical Hits**, which means melee attacks tend to deal more damage per hit. It also destroys most non-creature entities, such as Paintings, Leash Knots, Boats, Minecarts, and End Crystals.

The axe cuts through certain easily-breakable blocks, such as most plants, Tripwire, Scaffolding, and Amethyst Buds. It can also break Leaves and Pointed Dripstone upon colliding with them, but is halted by these blocks.

When halted, the axe turns back into an item (which can then **embed into the ground** if **[Tool Embed](#tool-embed)** is also installed). To be consistent with other projectiles, both the axe in flight and the dropped item are **invulnerable** to Lava, Fire, explosions, and other hazards.

If your axe has **Fire Aspect** (available only through special commands or features, like on [Worlds Collide](https://github.com/Drakonkinst/DrakonsDatapacks/wiki/Worlds-Collide)) or **Sharpness**, it has a special trail effect when in flight! In addition, a Fire Aspect axe will set mobs that it strikes on fire.

## Recalling

With the **Recalling** enchantment, press **Sneak (Shift) with an empty hand** to recall a thrown axe. This causes it to fly back towards you in an arc towards your right hand, cutting through blocks (though not colliding with any) and deal damage to creatures on the way back. Once the recall is triggered, the axe automatically flies back towards you and you may stop Sneaking as soon as you hear the sound effect.

Recalling only works from up to 250 blocks away, and does not work across dimensions. The axe will attempt to return to your currently selected slot if empty, or will simply return to your Inventory if you no longer have an empty hand. If you throw multiple axes with Recalling, they will all be recalled!

## Obtaining Enchantments

To obtain the Throwing and Recalling enchantments, you must first craft a **Throwing Grip** or a **Frozen Flame** (respectively) in a crafting bench. This uses **custom crafting**, so the output will appear as a green Knowledge Book—this should transform into the correct item upon entering your inventory.

Then, the items may be applied using custom **anvil forging**: drop the Axe and the enchantment item **on top of an anvil** (not in the anvil GUI) to combine them together. This also requires **10 experience levels** to enchant the item.

> **Warning**: These enchantments are **not part of the Vanilla enchantment system**, and are created by modifying the item's NBT (similar to an item's name and lore). Therefore, it **may be lost** if crafted with another item or used as the secondary item in an Anvil.

### Throwing Grip

The **Throwing Grip**, which grants the Throwing enchantment, is designed to be accessible from a relatively early stage.

> **Recipe**: 2x Leather, 1x Nether Quartz, 1x Feather, and 1x Stick. 

<p align="center">
  <img src="https://user-images.githubusercontent.com/11655960/230741369-167794cb-f1a5-4a05-8f57-fe0c350185a4.png">
</p>

### Frozen Flame

The **Frozen Flame**, which grants the Recalling enchantment, is designed to be a late-game upgrade that turns your Axe into the ultimate weapon. It requires nine esoteric, seemingly contradictory materials.

> **Recipe**: 1x Blue Ice, 1x Any Coral Block, 1x Crying Obsidian, 1x Sponge, 1x Blaze Rod, 1x Glowstone, 1x Dark Prismarine, 1x Soul Sand, and 1x Nether Quartz Ore. Shapeless.

<p align="center">
  <img src="https://user-images.githubusercontent.com/11655960/230741590-2232abd6-a0ab-450e-b54a-917442aac467.png">
</p>

## Tool Embed

This datapack synergizes with **[Tool Embed](https://github.com/Drakonkinst/DrakonsDatapacks/tree/master/datapacks/dc_tool_embed)** to create an even more engaging experience:

* Thrown axes embed into the ground.
* Recalling enchantment works even when the axe is embedded, and even (for whatever reason) if the embedded axe has Recalling, but not Throwing.
* Sneaking for 5 seconds makes your non-Recalling embedded axes glow, allowing you to find them more easily.

> **Note**:
>
> **For server administrators**: You can get a pre-made Leviathan Axe to play around with using `/function dc_throwable_axes:give/leviathan_axe`!
> 
> You can also apply Throwing and Recalling using the provided item modifiers. For example, to enchant the axe in your hand with Throwing or Recalling, use `/item modify entity @s weapon dc_throwable_axes:enchant_throwing` and  `/item modify entity @s weapon dc_throwable_axes:enchant_recalling`, respectively. 

