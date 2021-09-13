import os, time, traceback, zipfile

def zipFile(path, fileName):
    zipObj = zipfile.ZipFile(os.path.join("../out", fileName +
                             ".zip"), "w", zipfile.ZIP_DEFLATED)
    for root, _, files in os.walk(path):
        for file in files:
            print(os.path.join(root, file),
                                  os.path.join(path, ".."))
            zipObj.write(os.path.join(root, file),
                         os.path.relpath(os.path.join(root, file),
                                         os.path.join(path)))
    zipObj.close()

def clearZipFilesInDirectory(dirPath):
    for f in os.listdir(dirPath):
        if f.endswith(".zip"):
            os.remove(os.path.join(dirPath, f))
            
def isDatapackFolder(folder):
    for fileName in os.listdir(folder):
        if fileName == "pack.mcmeta":
            return True
    return False
    
def main():
    start = time.time()
    try:
        clearZipFilesInDirectory("../out")
        for fileName in os.listdir(".."):
            path = os.path.join("..", fileName)
            if os.path.isdir(path) and isDatapackFolder(path):
                if fileName != "dc_template":
                    zipFile(path, fileName)
        pass
    except:
        traceback.print_exc()
    end = time.time()
    print("Took", round((end - start), 4), "seconds")
    
if __name__ == '__main__':
    main()
    
