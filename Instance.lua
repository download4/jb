-- instance thing
local rbis = Instance
local Instance = {}
function Instance.new(Info)

    local new = rbis.new(Info.Class)

    if Info.Properties then

        for p, v in pairs(Info.Properties) do
            new[p] = v
        end

    end

    if Info.Parent then
        new.Parent = Info.Parent
    end

    return new

end

function Instance.oldNew(...)
    return rbis.new(...)
end

return Instance
