local arg = ...
local targetFile = ""

if(arg == nil) then
    print("ERROR: Missing Args=Filename")
    os.sleep(2)
    return
end

print("Fetching Update...")
