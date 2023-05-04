# DrakonCore

> **Note**: *The following information is primarily aimed at datapack developers who want to develop with DrakonCore.*

**DrakonCore** is the core library datapack used by *most* of the datapacks in this repository (with the exception of some recipe-only datapacks). It provides a number of useful functions, function "hooks", predicates, tags, and other tools to make development easier.

Most predicates and tags should be self-explanatory based on the file name and contents; however, I've tried to include additional description where it's helpful.

Functions are divided into an `api` folder and `internal` folder. **Only functions in the `api` folder should be used by other datapacks!** The internal functions are primarily to set up hooks and perform other logic that should never be called outside of the core datapack.

## Hooks

DrakonCore uses **function tags** to add new event listeners: when an event is detected using DrakonCore, it calls the corresponding function tag. Other datapacks can **add their own functions** to this tag to call that function whenever that event is fired!

When creating a new datapack using the `new_datapack` utility script, all available hooks will automatically be added to the datapack. This creates a `.json` file (found at `data/drakoncore/tags/functions`) that adds a new `.mcfunction` file to the function tag (found at `/data/<namespace>/functions/hooks`). However, if these functions are empty/not used, then this only adds additional overhead to these function tags. Therefore, **any unused hooks should be removed from your datapack**.

DrakonCore offers the following hooks. Note that when Executing Entity or Executing Location are **N/A**, these values are **unspecified** and cannot be trusted to be the right value.

| Hook | Description | Executing Entity | Executing Location |
| --- | --- | --- | --- |