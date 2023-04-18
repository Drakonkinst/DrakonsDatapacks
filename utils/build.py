# Imports
import sys, os, time, traceback, zipfile

# Do not compile these datapacks
ignoredDatapacks = {
    "dc_template"
}

# Datapacks for my personal SMP
worldsCollideDatapacks = {
    "drakoncore", # Core pack required for most datapacks to function
    
    "dc_armor_stand",
    "dc_arrow_salvage",
    "dc_improved_recipes",
    "dc_more_recipes",
    "dc_hats",
    "dc_pet_finder",
    "dc_pet_transfer",
    "dc_player_revive",
    "dc_repairable_tridents",
    "dc_rocket_travel",
    "dc_shiny_toe",
    "dc_throwable_axes",
    "dc_throwable_potato",
    "dc_throwable_torch",
    "dc_tool_embed",
    "dc_universal_dyeing",
    "dc_villager_fix",
    "dc_xp_storage",
    
    # Custom Items
    "dc_hidden_blade",
    "dc_item_magnet",
    "dc_long_fall",
    "dc_nightblood",
    
    # Playable Classes
    "dc_enderman",
    "dc_midas",
    "dc_symbiote",
    "dc_vampire",
    "dc_witch",
    "dc_umbrella",
    
    # Custom
    "dc_world_reset",
    "dc_worlds_collide",
    
    # Seasonal
    # "dc_valentines", # Valentines
    "dc_easter_hunt", # Easter
    "dc_wishing_well", # Easter
    # "dc_christmas_horde", # Christmas
}

# Input and output paths, from the perspective of /utils folder
sourcePath = "../datapacks"
compiledPath = "../out"

# Tasks
validBuildTargets = {
    "standard": {
        "includePaths": [sourcePath]
    },
    "all": {
        "includePaths": [sourcePath, sourcePath + "/all", sourcePath + "/custom"],
    },
    "server": {
        "includePaths": [sourcePath, sourcePath + "/custom"],
        "includeOnly": worldsCollideDatapacks
    },
    "server_dev": {
        "includePaths": [sourcePath, sourcePath + "/custom"],
        "includeOnly": [*worldsCollideDatapacks, "dc_boats"]
    }   
}
buildTarget = "standard"
buildSettings = validBuildTargets[buildTarget]

# Zip the directory at the given path and place it in output folder
def zipFile(path, fileName):
    zipObj = zipfile.ZipFile(os.path.join(compiledPath, fileName +
                             ".zip"), "w", zipfile.ZIP_DEFLATED)
    for root, _, files in os.walk(path):
        for file in files:
            zipObj.write(os.path.join(root, file),
                         os.path.relpath(os.path.join(root, file),
                                         os.path.join(path)))
    zipObj.close()

# Initialize output folder
def clearOutput(dirPath):
    # Create it if it doesn't exist
    if not os.path.exists(dirPath):
        os.makedirs(dirPath)
    
    # Remove zip files
    for f in os.listdir(dirPath):
        if f.endswith(".zip"):
            os.remove(os.path.join(dirPath, f))
            
# It is a datapack folder if it contains a pack.mcmeta file in the root
def isDatapackFolder(folder):
    for fileName in os.listdir(folder):
        if fileName == "pack.mcmeta":
            return True
    return False
    
def isValidDatapack(path, fileName):
    if not isDatapackFolder(path):
        return False
    if fileName in ignoredDatapacks:
        return False
    includeOnlyFilter = buildSettings.get("includeOnly")
    if includeOnlyFilter is not None and fileName not in includeOnlyFilter:
        return False
    return True

def zipDatapacksInFolder(folder):
    for fileName in os.listdir(folder):
        path = os.path.join(folder, fileName)
        if os.path.isdir(path):
            if isValidDatapack(path, fileName):
                zipFile(path, fileName)

def main():
    global buildTarget, buildSettings
    args = sys.argv[1:]
    
    if len(args) >= 1:
        buildTarget = args[0]
    
    start = time.time()
    clearOutput(compiledPath)
    if buildTarget in validBuildTargets:
        buildSettings = validBuildTargets[buildTarget]
    else:
        print("Unknown build target:", buildTarget)
        return
    
    try:
        for folder in buildSettings["includePaths"]:
            zipDatapacksInFolder(folder)
    except:
        traceback.print_exc()
        return
    
    end = time.time()
    print("Took", round((end - start), 4), "seconds")
    
if __name__ == '__main__':
    main()
    
