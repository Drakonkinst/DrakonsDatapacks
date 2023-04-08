# Arrow Salvage

**Arrow Salvage** allows players to **pick up arrows fired by hostile mobs**. However, all (regular) arrows have a **chance to break** upon hitting a block. Tipped, Spectral, and Infinity-enchanted arrows are unaffected by Arrow Salvage, with the exception of a Stray's Slowness arrows.

The chance for an arrow to break is based on the entity who shot it:

* Players and Dispensers: `30%`
* Skeletons, Illusioners, Pillagers, Piglins: `70%`
* Strays: `90%` (but drop special Tipped Slowness arrows!)
* Creative Mode players / Infinity-enchanted Bow: `0%`, but cannot be picked up

This feature increases overall arrow depletion, but rewards players for dodging or blocking enemy arrows with extra ammunition. With this feature, all arrows embedded into blocks can be picked up, which is more intuitive. Arrows have a chance to break to balance out the ability to harvest arrows from enemies.

> **Note**
> 
> **For developers**: To make this compatible with other datapacks that want to detect an arrow landing, this datapack actually destroys broken Arrows on the tick *after* it hits a block. This has no discernible gameplay differences, and should allow other datapacks to use embedded arrows on the tick before it's destroyed.

## Known Bugs

* Arrows shot by Strays show the Slowness effect twice in their tooltip.
