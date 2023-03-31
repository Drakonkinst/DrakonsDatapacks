# Utilities

This folder contains **utility scripts** for Drakon's Datapacks development.

## Developing with Drakon's Datapacks

I take a modular approach to my datapacks. While many of them are intended to work together,
making each feature into its own independent datapack (with the only requirement of having the `drakoncore` datapack as a core library) allows server owners to customize what features they want to have on their servers.

If you'd like to create datapacks using my pipeline, you can use the Python scripts found in the `utils` folder to create datapacks quickly based on a template! You can also use my scripts to recursively zip up all datapacks into a build folder so you can easily publish them to your server or upload them online!

Note that you will usually need to include the (compressed or uncompressed) `drakoncore` datapack in your datapacks folder. Most of my datapacks are reliant on `drakoncore`, which provides a number of helpful utility tags, and predicates to speed up your datapack development. It also improves overall performance of datapacks by centralizing the logic for certain event hooks and other functions so you don't have to waste time writing your own!

You are free to use my datapacks as a reference for your own work, and modify them how you please!
