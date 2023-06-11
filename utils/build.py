# Imports
import sys, os, time, traceback, zipfile, shutil, json

# Constants

# Directory paths, from the perspective of /utils folder
# If this script doesn't work, check that you're running it from the utils folder
SOURCE_PATH = "../datapacks"
DEFAULT_OUT_PATH = "../out"
TEMP_PATH = "../temp"
RESOURCE_FOLDER_NAME = "assets"

# Do not compile these datapacks
IGNORE_DATAPACKS = { "dc_template" }

# Do not add these files to compiled output
IGNORE_FILES_IN_DATAPACK = { "README.md" }

# Do not add folders with these names to compiled output
IGNORE_DIRECTORIES_IN_DATAPACK = { "resources" }

###### START EDITING HERE ######

# Datapacks for my personal SMP
SERVER_DATAPACKS = {
    "drakoncore", # Core pack required for most datapacks to function
    
    "dc_armor_stand",
    "dc_arrow_salvage",
    "dc_boats",
    "dc_improved_recipes",
    "dc_improved_squids",
    "dc_more_recipes",
    "dc_hats",
    "dc_parachute",
    "dc_pet_finder",
    "dc_pet_transfer",
    "dc_player_revive",
    "dc_polar_bear",
    "dc_repairable_tridents",
    "dc_revenant",
    "dc_rocket_travel",
    "dc_roomba",
    "dc_shiny_toe",
    "dc_spyglass_study",
    "dc_throwable_axes",
    "dc_throwable_potato",
    "dc_throwable_torch",
    "dc_tool_embed",
    "dc_universal_dyeing",
    "dc_villager_fix",
    "dc_wishing_well", # Easter - this is always on since it allows Easter Eggs to be broken
    "dc_xp_storage",
    
    # Custom Items
    "dc_hidden_blade",
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
    # "dc_easter_hunt", # Easter
    # "dc_christmas_horde", # Christmas
}

# Tasks
BUILD_TARGETS = {
    # Standard build target that builds anything in the datapacks folder (not including nested datapacks)
    "standard": {
        "includePaths": [SOURCE_PATH]
    },
    # Builds all datapacks, including archived and custom
    "all": {
        "includePaths": [SOURCE_PATH, SOURCE_PATH + "/archived", SOURCE_PATH + "/custom"],
    },
    # Builds only datapacks in the SERVER_DATPACKS list
    "server": {
        "includePaths": [SOURCE_PATH, SOURCE_PATH + "/custom"],
        "includeOnly": SERVER_DATAPACKS
    },
    # Builds datapacks from SERVER_DATAPACK in addition to others
    "server_dev": {
        "includePaths": [SOURCE_PATH, SOURCE_PATH + "/custom"],
        # Add new datapacks to this list
        "includeOnly": [
            *SERVER_DATAPACKS,
            # "dc_new_datapack"
            "dc_enderknife"
        ]
    },
    # Build only datapacks in the given list
    "dev": {
        "includePaths": [SOURCE_PATH],
        # Add new datapacks to this list
        "includeOnly": [
            "drakoncore",
            # "dc_new_datapack"
        ]
    }
}

###### STOP EDITING HERE (unless you know what you're doing) ######

# Global variable defaults
buildTarget = "standard"
buildSettings = None

# Zip the directory at the given path and place it in output folder
def zipDatapackFolder(path, fileName, outPath):
    zipObj = zipfile.ZipFile(os.path.join(outPath, fileName +
                             ".zip"), "w", zipfile.ZIP_DEFLATED)
    for root, dirs, files in os.walk(path, topdown=True):
        # Modify dirs in place to exclude certain directories
        # https://stackoverflow.com/questions/19859840
        # NOTE: This excludes ALL directories named in this list, regardless of whether they are nested or not
        dirs[:] = [d for d in dirs if d not in IGNORE_DIRECTORIES_IN_DATAPACK]
        
        for file in files:
            if file not in IGNORE_FILES_IN_DATAPACK:
                zipObj.write(os.path.join(root, file),
                            os.path.relpath(os.path.join(root, file),
                                            path))
    zipObj.close()

# Create it if it doesn't exist
def ensureDirectoryExists(dirPath):
    if not os.path.isdir(dirPath):
        os.makedirs(dirPath)

def deleteDirectory(dirPath):
    shutil.rmtree(dirPath)

# Initialize output folder
def clearOutput(dirPath):
    ensureDirectoryExists(dirPath)
    
    # Remove zip files only
    notRemoved = []
    for f in os.listdir(dirPath):
        if f.endswith(".zip"):
            try:
                os.remove(os.path.join(dirPath, f))
            except:
                notRemoved.append(f)
    
    if len(notRemoved) > 0:
        print("Warning:", len(notRemoved), "datapacks cannot be removed right now, make sure to delete any files that are not overwritten")
            
# It is a datapack folder if it contains a pack.mcmeta file in the root
def isDatapackFolder(folder):
    for fileName in os.listdir(folder):
        if fileName == "pack.mcmeta":
            return True
    return False
    
def isValidDatapack(path, fileName):
    if not isDatapackFolder(path):
        return False
    if fileName in IGNORE_DATAPACKS:
        return False
    includeOnlyFilter = buildSettings.get("includeOnly")
    if includeOnlyFilter is not None and fileName not in includeOnlyFilter:
        return False
    return True

def zipDatapacksInFolder(folder, outFile):
    numZipped = 0
    for fileName in os.listdir(folder):
        path = os.path.join(folder, fileName)
        if os.path.isdir(path):
            if isValidDatapack(path, fileName):
                if not buildSettings.get("noResources"):
                    extractDatapackResources(path, fileName)
                numZipped += 1
                zipDatapackFolder(path, fileName, outFile)
    return numZipped

def extractDatapackResources(path, datapackId):
    resourcePath = os.path.join(path, RESOURCE_FOLDER_NAME)
    tempResourcePath = os.path.join(TEMP_PATH, RESOURCE_FOLDER_NAME)
    if os.path.isdir(resourcePath):
        shutil.copytree(resourcePath, tempResourcePath, dirs_exist_ok=True)
        

def zipResourcePack(outPath):
    zipObj = zipfile.ZipFile(os.path.join(outPath, "resources.zip"), "w", zipfile.ZIP_DEFLATED)
    for root, dirs, files in os.walk(TEMP_PATH):
        for file in files:
            zipObj.write(os.path.join(root, file),
                os.path.relpath(os.path.join(root, file),
                    TEMP_PATH))
    zipObj.close()

def buildResourcePack(outPath):
    tempResourcePath = os.path.join(TEMP_PATH, RESOURCE_FOLDER_NAME)
    if not os.path.isdir(tempResourcePath):
        return 0
    dirs = os.listdir(tempResourcePath)
    if len(dirs) > 0:
        # Add pack.mcmeta
        shutil.copy("./pack.mcmeta", TEMP_PATH)
        # Zip
        zipResourcePack(outPath)
    # Delete temp directory
    deleteDirectory(TEMP_PATH)
    return len(dirs)

def main():
    global buildTarget, buildSettings
    args = sys.argv[1:]
    
    outFile = DEFAULT_OUT_PATH
    
    if len(args) >= 2:
        outFile = args[1]
    if len(args) >= 1:
        buildTarget = args[0]
    
    start = time.time()
    outputDatapacks = os.path.join(outFile, "datapacks")
    clearOutput(outputDatapacks)
    ensureDirectoryExists(os.path.join(TEMP_PATH, RESOURCE_FOLDER_NAME))
    if buildTarget in BUILD_TARGETS:
        buildSettings = BUILD_TARGETS[buildTarget]
    else:
        print("Unknown build target:", buildTarget)
        return
    
    numZipped = 0
    numResourcePacksMerged = 0
    try:
        for folder in buildSettings["includePaths"]:
            numZipped += zipDatapacksInFolder(folder, outputDatapacks)
        numResourcePacksMerged = buildResourcePack(outFile)
    except:
        traceback.print_exc()
        return
    
    end = time.time()
    print("Built", numZipped, "datapack(s) in", round((end - start), 4), "seconds")
    if numResourcePacksMerged > 0:
        print("* Also merged", numResourcePacksMerged, "resource pack(s)")
    
if __name__ == '__main__':
    main()
    
