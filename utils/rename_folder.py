import os
import re

# 1.21 renames a few folders

start_path = "../datapacks"
replace_map = {
    "structures": "structure",
    "advancements": "advancement",
    "recipes": "recipe",
    "loot_tables": "loot_table",
    "predicates": "predicate",
    "item_modifiers": "item_modifier",
    "functions": "function",
    "tags/functions": "tags/function",
}

def rename_invalid(root):
    total = 0
    for dirname in os.listdir(root):
        path = os.path.join(root, dirname)
        if not os.path.isdir(path):
            continue
        print(dirname)
        if dirname in replace_map:
            old_dirname = dirname
            dirname = replace_map[old_dirname]
            os.rename(old_dirname, dirname)
            total += 1
        os.chdir(dirname)
        total += rename_invalid(".")
        os.chdir("..")
    return total

def main():
    os.chdir(start_path)
    total_changed = rename_invalid(start_path)
    print(total_changed, "folders renamed")
    
if __name__ == '__main__':
    main()