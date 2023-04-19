# Modular Boats

![2023-04-18_21 47 18](https://user-images.githubusercontent.com/11655960/232969448-0d27e82d-38e7-4bae-b8ae-88773c86e81d.png)

**Modular Boats** introduces a new mechanic where **Boats can be attached to each other** to create larger, more spacious vessels (known as Ships). These Ships have more passenger slots than normal ships, allowing for further capabilities for mob transportation and multiplayer travel.

It also introduces **Sails**, which can be attached to Ships and allow your Ship to sail forward on its own!

## Creating Ships

To attach Boats together, right-click on one with a **Lead** to select the **passenger boat**. Then, right-click on another Boat with the Lead to select the **vehicle boat**. This will attach the passenger boat to be a passenger of the vehicle boat, taking up a passenger slot of the latter.
Boats can only be attached in **singly-linked chains**, which means each vehicle boat can only have one passenger boat and vice versa. In addition, attached Boats must follow some restrictions:

* Since Chest Boats have only one passenger slot, they can only be passenger boats and cannot be vehicle boats. This means that **only one Chest Boat can be added to your Ship**, and it must be placed in the back of the Ship.
* If the passenger boat is a standard Boat, it cannot have zero passengers. This helps to avoid a collision bug when two empty boats are superimposed over each other.
* Two Boats must be within 10 blocks of each other to attach successfully.
* Ships can only have one driver, which is the player controlling the frontmost boat.
* There is no technical limit on how many Boats can be attached, but at a certain point (approximately 4-5 Boats) they will naturally start to sink underwater due to how passenger stacking works.

*Note: Ships can be buggy and prevent you from selecting the driver's Boat in some situations, and rebuilding the Ship may be necessary if this becomes an issue.*

## Sails

Toss any **Banner** at a Boat with a free passenger slot to give it a **Sail!** Sails attach to the Boat as a passenger slot and move the Boat forward automatically (while raised). Sails display the patterns of their Banner, providing new customization options!

To raise the sails, you must be the Ship's driver. **Look directly upwards** to raise the sails and begin sailing. Note that while you can change directions, rowing does not significantly forward speed while sailing. When you want to stop, **look directly downwards** to lower the sails and return to normal Boat controls.

Sails can be **stacked** onto the same Ship to increase its speed even further! When the Boat is broken, the Sail drops itself back into a Banner.
