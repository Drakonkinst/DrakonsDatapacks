import os, shutil, sys

templatePath = "../datapacks/dc_template"
outputPath = "../datapacks/"
def createNewDatapackFolder(name, includeResourcePackTemplate):
    newPath = os.path.join(outputPath, name)
    shutil.copytree(templatePath, newPath)
    os.rename(os.path.join(newPath, "data/dc_template"), os.path.join(newPath, "data/" + name))
    if includeResourcePackTemplate:
        os.rename(os.path.join(newPath, "assets/dc_template"), os.path.join(newPath, "assets/" + name))
    else:
        shutil.rmtree(os.path.join(newPath, "assets"))
    for path, dirs, files in os.walk(os.path.join(newPath, "data/drakoncore/tags/functions")):
        for filename in files:
            if filename.endswith(".json"):
                filepath = os.path.join(path, filename)
                with open(filepath) as f:
                    s = f.read()
                s = s.replace("dc_template", name)
                with open(filepath, "w") as f:
                    f.write(s)
def main():
    includeResourcePackTemplate = False

    args = sys.argv[1:]
    if "-r" in args:
        includeResourcePackTemplate = True
    
    name = input("Enter a unique id for the datapack (i.e. dc_template, dc_xp_storage, etc.): ")
    if os.path.isdir(os.path.join(outputPath, name)):
        print("Error: That directory already exists.")
        return
    createNewDatapackFolder(name, includeResourcePackTemplate)
    print("New datapack with id \"" + name + "\" created.")
    if includeResourcePackTemplate:
        print("* Also initialized resource pack files.")

if __name__ == '__main__':
    main()
