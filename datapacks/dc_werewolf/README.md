# Werewolf Playable Class

> **Note**: *This datapack is part of the [Playable Classes](https://github.com/Drakonkinst/DrakonsDatapacks/wiki/Playable-Classes) collection.*

**Werewolf Playable Class** adds a playable class to the game, the **Werewolf**.

The Werewolf can shapeshift between human and wolf at will. As a Wolf, they have enhanced abilities but cannot use armor or items. Racking up kills fuels the Werewolf's **rage** meter, making them more powerful but risking **losing control**. At night, their hunter instincts allow them to locate their next prey with piercing **howls**, and they can **empower** their wolfpack in combat.

Like all playable classes, this class can only be granted by server operators. Grant this class with `dc_werewolf` tag, which can be added with `/tag <player> add dc_werewolf` and removed with `/tag <player> remove dc_werewolf`.

## Abilities

- **[Shapeshifting](#shapeshifting)**: Sneak while holding a bone to **transform into a Wolf**. Equip any item to transform back into a human at will, unless you are **Enraged**.
- **[Werewolf's Rage](#werewolfs-rage)**: Killing mobs and taking damage builds up **rage**, which makes the Werewolf more powerful at every stage. However, reaching maximum rage **forcibly transforms** the player, making them attack everything in sight.
- **Carnivorous Diet**: While you can still eat most foods, anything except meat **provides a minor Hunger effect**, as it is not your preferred food.
  - In addition, **Rotten Flesh** and **Raw Chicken** can be eaten without inflicting Hunger.
- **Pack Leader**: Nearby Wolves (within 16 blocks) are empowered with **Resistance I**.
  - Killing most creatures shares their spoils with the pack, **healing** nearby Wolves by 2 hearts.
  - Skeletons, magical constructs (Blazes, Golems), and spirits (Allays, Vexes, Ghasts) are **inedible**. Instead, killing them provides **Strength I** to nearby Wolves for 30 seconds.
- **Magical Weakness**: The **Weakness** potion effect **prevents your Shapeshifting entirely**.
  - Players who hunt Werewolves can use Splash Potions of Weakness to forcibly transform a Werewolf back into a human, making them far more vulnerable.
  - Werewolves can voluntarily drink Potions of Weakness to prevent their transformation, even when they become **Enraged**.

## Shapeshifting

While holding a **bone** in your mainhand, sneak for a short period to transform into **[Wolf Form](#wolf-form)**. This **removes** the bones from your inventory temporarily (leaving your mainhand empty), and automatically returns them when transforming back into a human.

> **For server owners:** This respects the `keepInventory` gamerule. The Werewolf will drop the bones upon death if keepInventory is off, and recover them automatically if keepInventory is on.

Shapeshifting **automatically discards all armor and held items in either hand**, dropping them to the floor! This makes Shapeshifting dangerous while wearing armor, as it may be difficult to recover again.

To return to human form, **equip or hold any item** to remember your human form. This is impossible when **Enraged**, and any attempt will result in the items being discarded again.

Transforming back into a human gives you **Weakness** for 10 seconds, preventing you from transforming into a Wolf again too quickly.

## Wolf Form

In Wolf Form, you play as a Wolf that can blend in seamlessly with other Wolves. Although you cannot use tools, weapons, or armor, you have **6 armor** (equivalent to full Chainmail) and **6 attack damage** (equivalent to an Iron Sword). You can also **attack faster** than a sword, providing more potential DPS.

> Note: Although you appear to be a Wolf, the player model is just invisible and your hitbox does not change.

You can **sit down** while standing still by **sneaking**. If you sneak for 5 seconds or stand still for 10 seconds, you will continue to sit without needing to hold any button (until you move again).

You can also be **fed by other players** if they interact with you while holding food. You gain **2 drumsticks** regardless of the food given, though non-meat food alsos inflict a **minor Hunger effect**.

While in **[Wolf Form](#wolf-form)**, you also have the following abilities:

- **Thrill of the Chase**: Sprinting for long periods builds up your movement speed, up to +40%.
  - Nearby Wolves have identical speed for the duration.
- **Glory of the Kill**: You **eat** creatures you kill in Wolf Form, allowing you to replenish your hunger without eating food items.
  - Small creatures (Chicken, Silverfish, etc.) provide **1 drumstick**, medium creatures (Cow, Zombie, etc.) provide **2 drumsticks**, and large creatures (Horse, Ravager, etc.) provide **4 drumsticks**.
  - Skeletons, magical constructs (Blazes, Golems), and spirits (Allays, Vexes, Ghasts) are **inedible**.
- **Howl**: While sitting in Wolf Form, sneak while looking at the sky to perform a loud **howl**, which can be heard at long distance.
  - **Night Hunter**: At night while under the open sky, howling creates **particle trails** leading to nearby creatures within 64 blocks.
    - Players have **purple** trails, hostile mobs have **red** trails, and all other mobs have **blue** trails. Tracks up to 30 targets, prioritizing players, then hostile mobs, then by distance.
    - When **Enraged**, also makes your targets **glow** temporarily.

## Werewolf's Rage

Every time you kill a creature or take damage in either form, you gain **Rage**. This is displayed in a **9-segment rage meter** displayed when in Wolf Form, gaining Rage, or holding a bone in Human form.

- Taking damage grants 1/3 of a Rage Segment.
- Killing a small creature (Chicken, Silverfish, etc.) grants 2/3rd of a Rage Segment.
- Killing a medium creature (Cow, Zombie, etc.) grants 1 Rage Segment.
- Killing a large creature (Horse, Ravager, etc.) grants 1.5 Rage Segments.

Rage **drains over time** by 1 segment per 30 seconds. Being under sunlight makes rage drain **twice as fast** (1 segment per 15 seconds). In addition, the Rage meter is **filled** at 9 Rage Segments, but can actually store up to **16 Rage Segments** (when fully maxed out, the final Rage Segment can last for up to 4 minutes). If you die, all Rage is lost.

There are **three stages** of Rage, each providing more powers:

- **Calm** (0-3 Rage Segments):
  - The default stage.
- **Excited** (4-7 Rage Segments):
  - **Regeneration I** in both forms.
  - In Wolf Form, gain +1 additional **armor** shirt (7 total).
- **Enraged** (8-9 Rage Segments):
  - **Forcibly transformed into Demonic Wolf Form**.
  - In addition to all bonuses provided by the **Excited** stage, gain **Night Vision** in both forms.
  - In Human Form (possible under the effects of Weakness), gain +20% speed.
  - In Wolf Form, gain +1 additional **armor** shirts (8 total).
  - In Wolf Form, gain **Untamed Ferocity** which automatically targets and attacks nearby mobs.
  - Empowers the **Howl** ability to reveal nearby mobs with a Glowing effect.

**Untamed Ferocity** represents the Werewolf's animal instincts taking over, causing them to rapidly attack anything that comes close (except for other Wolves). This powerful ability makes the Werewolf almost unstoppable in close-range combat, but cannot be controlled.

Gaining too much Rage risks becoming **Enraged** at a bad time, making you incredibly dangerous to friend and foe alike. Rage cannot be decreased by anything except time, which means you must wait out the duration or apply the Weakness effect to yourself in order to transform back into a human. When your Rage meter is full, you will stay Enraged for approximately **2-5 minutes** without gaining additional Rage.
