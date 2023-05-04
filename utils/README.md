# Utilities

This folder contains **utility scripts** for Drakon's Datapacks development.

## Build Script

`build.py [buildTarget] [outPath]` populates the `outPath` directory (defaulting the `out` folder in the root of the repository) with zipped datapack files based on the given `buildTarget`. The build target determines the **goal** or **target audience** of the current build, which can change which datapacks we want to compile. This gives us a mechanism to control which datapacks are compiled, while keeping all datapacks in this repository. (The `dc_template` datapack is never compiled.)

The available build targets are:

* `standard`: Builds all datapacks in the `datapacks` repository, but **not** the datapacks in `datapacks/archived` or `datapacks/custom`.
* `all`: Builds all datapacks in the `datapacks` repository, **including** the datapacks in `datapacks/archived` and `datapacks/custom`.
* `server`: Builds all datapacks used by my private server, Worlds Collide. This is a **customized list** defined in `build.py`, and can be edited.
* `server_dev`: Builds all datapacks used by my private server, Worlds Collide, as well as **any additional** datapacks specified in the list, which is useful for when testing development packs that are not part of Worlds Collide yet.

`outPath` can be the path to your test world's datapacks folder (put in quotes for safety), which can save you the trouble of copying these files over.

## New Datapack Script

`new_datapack.py` can be run without arguments to start a prompt to create a template datapack. It uses `dc_template` as the template, but replaces all `dc_template` namespaces to the given namespace. This means the datapack includes all available hooks: **hooks that are not used should be deleted** (both the `.json` and `.mcfunction` file) once development is complete.

## Developing with Drakon's Datapacks

I take a modular approach to my datapacks. While many of them are intended to work together,
making each feature into its own independent datapack (with the only requirement of having the `drakoncore` datapack as a core library) allows server owners to customize what features they want to have on their servers.

If you'd like to create datapacks using my pipeline, you can use the Python scripts found in the `utils` folder to create datapacks quickly based on a template! You can also use my scripts to recursively zip up all datapacks into a build folder so you can easily publish them to your server or upload them online!

Note that you will usually need to include the (compressed or uncompressed) `drakoncore` datapack in your datapacks folder. Most of my datapacks are reliant on `drakoncore`, which provides a number of helpful utility tags, and predicates to speed up your datapack development. It also improves overall performance of datapacks by centralizing the logic for certain event hooks and other functions so you don't have to waste time writing your own!

You are free to use my datapacks as a reference for your own work, and modify them how you please!
