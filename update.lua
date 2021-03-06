local arg = ...
local FILENAME = "/".. arg .. ".lua"
 
local cacheBreak = tostring(math.random(0, 99999))
 
res, err = http.get('https://raw.githubusercontent.com/MrDorn/ccPrograms/main/' .. arg .. '.lua?breaker=' .. cacheBreak)
if not res then error(err) end
 
local code = res.readAll()
 
 
if not(fs.exists(FILENAME))
then
    local newHarvest = fs.open(FILENAME, 'w')
    newHarvest.close()
end
 
local readFile = fs.open(FILENAME, 'r')
local oldCode = readFile.readAll()
readFile.close()
 
local file = fs.open(FILENAME, 'w')
 
if oldCode == code
then
    file.write(oldCode)
    print('NO CHANGES MADE - Same Code')
else
    file.write(code)
    print('WRITING UPDATE')
    byteDiff = string.len(code) - string.len(oldCode)
 
    if byteDiff >= 0
    then
        print(tostring(math.abs(byteDiff)) .. ' bytes added')
    else
        print(tostring(math.abs(byteDiff)) .. ' bytes removed')
    end
end
 
file.close()
res.close()