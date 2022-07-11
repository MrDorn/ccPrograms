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
print("Updating...")
print("[II    ]")

local files = fs.list() -- list of files in directory

for i,v in pairs(files) do
    print(v)
end