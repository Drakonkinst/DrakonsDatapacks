import os
import shutil

templatePath = "../dc_template"
def create_new_datapack_folder(name):
    newPath = os.path.join("../", name)
    shutil.copytree(templatePath, newPath)
    os.rename(os.path.join(newPath, "data/dc_template"), os.path.join(newPath, "data/" + name))
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
    name = input("Enter a unique id for the datapack (i.e. dc_template, dc_xp_storage, etc.): ")
    create_new_datapack_folder(name)
    print("New datapack with id \"" + name + "\" created.")

if __name__ == '__main__':
    main()
