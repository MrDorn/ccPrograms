local arg = ...
local targetFile = ""

if(arg == nil) then
    print("ERROR: Missing Args=Filename")
    os.sleep(2)
    return
end

term.clear()
print("Updating...")
print("[      ]")
os.sleep(0.5)
term.clear()
print("Updating...")
print("[II    ]")

local files = fs.list(".") -- list of files in directory
term.clear()
print("Updating...")
print("[III   ]")

for i,v in pairs(files) do
    if(v == arg) then
        targetFile = v
    end
end
term.clear()
print("Updating...")
print("[IIII  ]")
if(targetFile == "") then
    print("ERROR: File not found")
    os.sleep(2)
    return
end
term.clear()
print("Updating...")
print("[IIIII ]")
os.execute("rm" .. " " .. targetFile .. ".lua")
term.clear()
print("Updating...")
print("[IIIIII]")
os.execute("wget https://raw.githubusercontent.com/MrDorn/ccPrograms/main/".. targetFile .. ".lua")

term.clear()
print(filename .. " has been successfully updated.")