# Drakon's Datapacks

A collection of datapacks that can be used to mod your Minecraft worlds!

This is the source code for my Minecraft datapack collection. You can read about some of my datapacks on the [Drakon's Datapacks official website](https://sites.google.com/view/drakons-datapacks/)!

## Developing with Drakon's Datapacks

If you'd like to create datapacks using my pipeline, you can use the Python scripts found in the `utils` folder to create datapacks quickly based on a template! You
can also use my scripts to recursively zip up all datapacks into a build folder so you can easily publish them to your server or upload them online!

Note that you will usually need to include the (compressed or uncompressed) `drakoncore` datapack in your datapacks folder. Most of my datapacks are reliant on
`drakoncore`, which provides a number of helpful utility tags, and predicates to speed up your datapack development. It also improves overall performance of
datapacks by centralizing the logic for certain event hooks and other functions so you don't have to waste time writing your own!

You are free to use my datapacks as a reference for your own work, and modify them how you please!
