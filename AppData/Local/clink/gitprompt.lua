
function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

function git_prompt_filter()
    local branch
    local dirty = ""

    local git = "c:/git/bin/git.exe" -- this will reduce the number of exe files called, checked with procmon.exe
    if not file_exists(git)
    then
        git = "git"
    end
       
    for line in io.popen(git.." status 2>nul"):lines() do
        m = line:match("^# On branch (.+)$")
        if m then
            branch = m
        end
        m = line:match("^# Your branch is ahead of (.+)$")
        if m then
            dirty = "+"
        end
        m = line:match("modified:")
        if m then
            dirty = "*"
            break
        end
    end
    if branch then
        local prompt = clink.prompt.value:match("(.*)>$")
        if prompt then
            clink.prompt.value = prompt.." ["..branch..dirty.."]>"
        end
    end

    return false
end

clink.prompt.register_filter(git_prompt_filter, 50)

