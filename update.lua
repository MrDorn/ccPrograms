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
targetFile = arg
for i,v in pairs(files) do
    if(v == arg) then
        print("found")
        os.sleep(1)
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
os.run({},"rm" .. " " .. targetFile .. ".lua")
term.clear()
print("Updating...")
print("[IIIIII]")
local request = http.get("https://raw.githubusercontent.com/MrDorn/ccPrograms/main/".. targetFile .. ".lua")
local file = fs.open(targetFile .. ".lua", "w")
file.write(request.readAll())
file.close()
term.clear()
print(targetFile .. " has been successfully updated.")
request.close()