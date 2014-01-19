
function git_prompt_filter()
    for line in io.popen("git rev-parse --is-inside-work-tree 2>nul"):lines() do
        local m = line:match("true")
        if m then
            for line in io.popen("git branch 2>nul"):lines() do
                local branch = line:match("%* (.+)$")
                if branch then
                    local stat = os.execute("git diff --quiet --ignore-submodules HEAD >nul")
                    if stat then
                        dirty = ""
                    else
                        dirty = "*"
                    end

                    local prompt = clink.prompt.value:match("(.*)>$")
                    if prompt then
                        clink.prompt.value = prompt.." ["..branch..dirty.."]>"
                    end
                    break
                end
            end
        end
    end


    return false
end

clink.prompt.register_filter(git_prompt_filter, 50)

