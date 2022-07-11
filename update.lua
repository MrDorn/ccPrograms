local arg = ...
local targetFile = ""

if(arg == nil) then
    print("ERROR: Missing Args=Filename")
    os.sleep(2)
    os.exit(1)
end

print("Fetching Update...")
