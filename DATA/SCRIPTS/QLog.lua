QLog = {}
QLog["Write"] = function(file, line)
    local saveto = appendto(file)
    local message = "[" .. date("%Y-%m-%d-%H:%M:%S") .. "] :: " .. line
	print(tostring(message).."\n")
	write(saveto, tostring(message).."\n")
    flush(saveto)
    closefile(saveto)
end