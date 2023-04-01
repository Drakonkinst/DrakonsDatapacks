# Symbiote Playable Class

*This datapack is part of the [Playable Classes](https://github.com/Drakonkinst/DrakonsDatapacks/wiki/Playable-Classes) collection.*

**Symbiote Playable Class** adds a playable class to the game, the **Symbiote**. Symbiotes are strange, alien creatures with **altered physiology**. They are **far less durable** than normal players and have a strong aversion to fire, but are also **immune** to most sicknesses and can eat any food with no ill effect. Symbiotes also have the unique power to **inhabit** any creature, which they can use to empower their host or escape dangerous situations.

Like all playable classes, this class can only be granted by server operators. Grant this class with `dc_symbiote` tag, which can be added with `/tag <player> add dc_symbiote` and removed with `/tag <player> remove dc_symbiote`.

## Abilities

* **Thing From Beyond**: While your max health is capped at 5 hearts, you are also **immune** to all Poison, Wither and Hunger effects.
* **Mob Inhabitation**: While holding a Spider Eye, crouching for 3 seconds allows you to **inhabit** the creature you are looking at within a 10 blocks. The targeted creature is marked by a plume of black particles. After 3 seconds have passed, you leap into the target to inhabit them; taking damage before these 3 seconds have passed forces you to restart. While **inhabiting** them, you have no control over your host's movements; your host is given Strength II, Regeneration I, and Hunger I for the duration of this ability while leaving behind a visible trail of black particles. **You cannot inhabit another Symbiote or another Symbiote's host.**
  * **Exiting**: Click on a text button that appears in chat to exit your host. The nature of your exit changes depending on your timing. **Be careful which direction you exit or you may find yourself trapped inside a block!**
    * **Violent Exit**: Exiting within 6 seconds of inhabiting your host cripples them from within, dealing 6 hearts of damage. The Symbiote also gains a strong Regeneration effect.
    * **Passive Exit**: Exiting after 6 seconds does not damage your host nor grant you Regeneration.
  * **Parasitic Leech**: Inhabiting certain creatures grants you various positive effects while inhabiting the creature and for 30 seconds after leaving your host.
* **Weakness to Fire**: You are incredibly weak to fire and have Slowness IV, Weakness IV, and Wither II while on fire. In addition, you are knocked out of your host if the host takes fire damage. This weakness can be avoided if under the effects of Fire Resistance.
