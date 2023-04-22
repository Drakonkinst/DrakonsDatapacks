# Vampire Playable Class

> **Note**: *This datapack is part of the [Playable Classes](https://github.com/Drakonkinst/DrakonsDatapacks/wiki/Playable-Classes) collection.*

**Vampire Playable Class** adds a playable class to the game, the **Vampire**. Instead of eating, the Vampire must constantly drain blood from living creatures to sustain its **Blood level**. Higher Blood levels empower the Vampire with **additional powers**, such as Night Vision, Strength, Speed, and the ability to become **invisible** in dark places. They can also summon a swarm of **vampire bats** and **transform into a bat** themselves. However, Vampires wither in the daylight and have a strong distaste for wooden tools.

Like all playable classes, this class can only be granted by server operators. Grant this class with `dc_vampire` tag, which can be added with `/tag <player> add dc_vampire` and removed with `/tag <player> remove dc_vampire`.

## Abilities

* **Life Drain**: Killing a living, organic mob with a melee attack **heals** you. If you are already at full health, you gain 2 Absorption hearts instead. You also gain **Blood**.
* **Blood Dependency**: You cannot eat nor heal naturally, but can always sprint. You require a constant supply of blood to survive, which you can only obtain via **Life Drain**. Blood drains over time, lasting approximately 60 minutes from the **Overflowing** Blood level. The more Blood you have, the more effects you gain, determined by the following levels:
  * **Critical**: You are completely out of blood and begin to starve. You also have Mining Fatigue I.
  * **Hungry**: You are close to starving. You gain Night Vision while under the night sky.
  * **Content**: You gain all the effects of Hungry, and also gain Strength I while under the night sky.
  * **Sated**: You gain all the effects of **Content**, and also gain Speed I while under the night sky. In addition, sneaking in a sufficiently dark place makes you Invisible.
  * **Overflowing**: You gain all the effects of Sated, and also gain Resistance I while under the night sky. In addition, you also gain all of the aforementioned effects while in a sufficiently dark area.
  * To see your current blood level, hold a **Ghast Tear** in your main hand. This also displays whether the area is sufficiently dark or not.
* **Absorb Bats**: Sneaking with an empty hand for 3 seconds **absorbs** nearby bats, making them disappear into a cloud of red smoke. You gain the effects of **Life Drain** for every bat absorbed except for the Blood gain.
* **Vampire Bat Swarm**: Sneaking with a **Ghast Tear** for 3 seconds summons a **swarm of vampire bats**, which inflict magic damage on nearby living, organic creatures and heal the Vampire for every creature damaged. Vampire Bats follow your position, providing a barrier against arrows and leeching nearby creatures. Casting this deals **8 hearts of true damage** (though Absorption mitigates some of this) and reduces your Blood level to **Hungry**; however, each level above **Hungry** summons 5 additional bats (for a maximum of 15 at **Overflowing**). This ability cannot be cast if Critical/Hungry or if you would be killed by it.
  * Conjured Vampire Bats are not considered living creatures, and therefore do not grant health or Blood when killed. They can still be **absorbed** for health gain.
  * Vampire Bats expire after **60 seconds**, but their lifetime is extended if they feed upon other creatures.
* **Bat Flight**: Sneaking with a **Ghast Tear** while midair **transforms you into a Bat**, allowing you to fly in the direction you look. Blood drains extremely quickly while you are a bat. In addition, you are transformed back into a Vampire upon colliding with a block, taking damage, or flying into a bright area. Upon exiting Bat form, you gain **Slow Falling** until you hit the ground.
  * Bat flight is greatly slowed when underwater.
* **Weakness to Daylight**: You gain the Wither and Weakness effects when in open daylight. Wither damage is negated if under the Fire Resistance effect or while wearing a helmet; however, the helmet slowly takes damage and may break over time.
* **Mortally Weak to Wooden Tools**: Becomes extremely vulnerable when struck by wooden tools.
