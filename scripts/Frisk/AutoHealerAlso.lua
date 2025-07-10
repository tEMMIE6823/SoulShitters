local plyrs = game:GetService("Players")
local wrk = game:GetService("Workspace")
local lplr = plyrs.LocalPlayer
local lgui = lplr.PlayerGui
local lchar = lplr.Character
local run = game:GetService("RunService")
local rs = game:GetService("ReplicatedStorage")
local remotes = rs:WaitForChild("Remotes")
local events = remotes:WaitForChild("Events")
local friskMoves = remotes:WaitForChild("FriskMoves")
local items = {"FadedRibbon","ManlyBandana","OldTutu","CloudyGlasses","CowboyHat","TheLocket","StainedApron"}
local hum = char:FindFirstChildOfClass("Humanoid")
_G.heal = true
local function GetHP()
    return hum and hum.Health or 0
end
function AutoHeal(last)
    if conn then return end
    conn = run.RenderStepped:Connect(function()
        if GetHP() >= 99 or not _G.heal then
            conn:Disconnect()
            conn = nil
            spawn(function()
            local t = lchar:FindFirstChild("TemmieArmor")
            if t then t:Destroy() end
            for i = 1, 5 do
                friskMoves:InvokeServer({_G.Pass, "EquipArmor", last})
            end
        end)
            return
        end
        local t = lchar:FindFirstChild("TemmieArmor")
        if t then t:Destroy() end
        friskMoves:InvokeServer({_G.Pass, "EquipArmor", "TemmieArmor"})
        toggle = not toggle
    end)
end

-- // Loops // --
while task.wait() do
startConn = run.RenderStepped:Connect(function()
    if _G.heal and not conn and GetHP() < 99 then
        local last
        for _, name in ipairs(items) do
            if lchar:FindFirstChild(name) then
                last = name
                break
            end
        end
        AutoHeal(last or "TemmieArmor")
    elseif GetHP() >= 99 and conn then
        
        conn:Disconnect()
        conn = nil
    end
end)
end