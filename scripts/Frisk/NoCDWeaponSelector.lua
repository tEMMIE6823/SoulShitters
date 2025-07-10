local plyrs = game:GetService("Players")
local wrk = game:GetService("Workspace")
local lplr = plyrs.LocalPlayer
local lgui = lplr.PlayerGui
local lchar = lplr.Character
local z = Instance.new
local sgui = z("ScreenGui", lgui)
local frame = plyrs.LocalPlayer.PlayerGui.WeaponSelector.Frame:Clone()
local DBshower = game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower
local rs = game:GetService("ReplicatedStorage")
local run = game:GetService("RunService")
local remotes = rs:WaitForChild("Remotes")
local events = remotes:WaitForChild("Events")
local friskMoves = remotes:WaitForChild("FriskMoves")
local anims = lplr.Backpack.Main.FriskMoves.ModuleScript.Animations.BasicCombat
local CAS = game:GetService("ContextActionService")
local lg = game:GetService("Lighting")
local UIS = game:GetService("UserInputService")
local bsat = lplr.Backpack.Main.FriskMoves.ModuleScript.Animations.BasicCombat
local char = game.Players.LocalPlayer.Character
local hum = char:FindFirstChildOfClass("Humanoid")
--local s = loadstring(game:HttpGet("https://raw.githubusercontent.com/tEMMIE6823/NotifTests/refs/heads/main/notif.lua"))()
local heldKeys = {}
local lalala = {RelKnife = 7,WornDagger = 6,EmptyGun = 5,TornNotebook = 4,BalletShoes = 3,ToughGloves = 2,ToyKnife = 1}
local unused = {"Bandage","FadedRibbon","ManlyBandana","OldTutu","StainedApron"}
local conn
local startConn
local toggle = false
local items = {"FadedRibbon","ManlyBandana","OldTutu","CloudyGlasses","CowboyHat","TheLocket"}
_G.presetmode = true
ijudsa = true
goy = nil
swat = false
_G.MoveActive = false
frame.Parent = sgui
sgui.IgnoreGuiInset = true
sgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
plyrs.LocalPlayer.PlayerGui.WeaponSelector.Enabled = false
--if lchar:FindFirstChild("ItemBoost(Attack)") then
--    s:notif("rejoin", "{NoCDWeaponSelector}", "You were disconnected because:", "You already had a prior weapon equipped when executing. Rejoin and do not open the Weapon Selector menu until you actually execute the script")
--    return
--end

function debounce(move, number, time)
    local i = DBshower["Moves" .. move]
    local k = i[tostring(number)]
    time = time or k.Time.Value
    k.Time.Value = time
    k.Activated.Value = false
    k.Activated.Value = true
    task.wait(time)
    k.Activated.Value = false
    --_G["Move" .. tostring(move)] = number -- i dont remember what the orig plan for this was gonna be
end

local function GetHP()
    return hum and hum.Health or 0
end

for _, obj in ipairs(frame:GetDescendants()) do
    if obj:IsA("LocalScript") then
        obj:Destroy()
    end
end
function toy()
    if DBshower.Moves1[1].Activated.Value == false or DBshower.Moves6[1].Activated.Value == false or DBshower.Moves7[1].Activated.Value == false and _G.MoveActive == false then
        _G.MoveActive = true
        friskMoves:InvokeServer({_G.Pass, "ToyKnifeCombo"})
        _G.MoveActive = false
        task.spawn(function() debounce(6,1,10) end)
        task.spawn(function() debounce(7,1,10) end)
        task.spawn(function() debounce(1,1,10) end)
    else return end
end
function glove()
    if DBshower.Moves2[1].Activated.Value == false and _G.MoveActive == false then
    _G.MoveActive = true
    friskMoves:InvokeServer({_G.Pass, "ToughGloves", "PunchBarrage"})
    _G.MoveActive = false
    task.spawn(function()
    debounce(2,1,7)
    end)
    else return end
end
function shoe()
    if DBshower.Moves3[1].Activated.Value == false and _G.MoveActive == false then
    _G.MoveActive = true 
    friskMoves:InvokeServer({_G.Pass, "BalletShoes", "TwirlKick"})
    _G.MoveActive = false
    task.spawn(function()
    debounce(3,1,7)
    end)
    else return end
end
function book()
    if DBshower.Moves4[1].Activated.Value == false and _G.MoveActive == false then
    _G.MoveActive = true
    friskMoves:InvokeServer({_G.Pass, "BookCounter"})
    _G.MoveActive = false
    task.spawn(function()
    debounce(4,1,10)
    end)
    else return end
end
function gunlight()
    if DBshower.Moves5[1].Activated.Value == false then
        debounce(5,1,0.1)
        task.spawn(function()
        friskMoves:InvokeServer({_G.Pass, "GunShot", "Light", game.Players.LocalPlayer.Character["Right Arm"].CFrame})
        end)
    else return end
end
function gunheav()
    if DBshower.Moves5[1].Activated.Value == false and _G.MoveActive == false then
        _G.MoveActive = true
        friskMoves:InvokeServer({_G.Pass, "GunShot", "Heavy", game.Players.LocalPlayer.Character["Right Arm"].CFrame})
        _G.MoveActive = false
        debounce(5,1,5)
    else return end
end
function gun()
    if DBshower.Moves5[1].Activated.Value == false and _G.MoveActive == false then
    local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    local hum = char:FindFirstChildOfClass("Humanoid")
    local startTime = tick()
    local held = true

    local ended
    ended = UIS.InputEnded:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.One then
            held = false
            ended:Disconnect()
        end
    end)

    local animLight = z("Animation")
    animLight.AnimationId = "rbxassetid://4807919857"
    local trackLight = hum:FindFirstChildOfClass("Animator"):LoadAnimation(animLight)
    trackLight:Play(0.2)
    trackLight:AdjustSpeed(0)
    while held and tick() - startTime < 0.24 do
        task.wait()
    end

    local duration = tick() - startTime
    if duration < 0.24 then
        trackLight:AdjustSpeed(1)
        task.wait(0.15)
        gunlight()
        
    else
        trackLight:Stop(0.1)
        local anim = z("Animation")
        anim.AnimationId = "rbxassetid://4807935308"
        local track = hum:FindFirstChildOfClass("Animator"):LoadAnimation(anim)
        track:Play(0.2)
        wait(0.3)
        gunheav()
    end

    trackLight:Stop(0.1)
    else return end
end

function knife2()
    if DBshower.Moves7[2].Activated.Value == false and _G.MoveActive == false then
    _G.MoveActive = true
    friskMoves:InvokeServer({_G.Pass, "RealKnifeBaragge"})
    _G.MoveActive = false
    task.spawn(function()
    debounce(7,2,16)
    end)
    else return end
end
function knife3()
    if DBshower.Moves7[3].Activated.Value == false and _G.MoveActive == false then
    _G.MoveActive = true
    friskMoves:InvokeServer({_G.Pass, "RealKnifeSlashes"})
    _G.MoveActive = false
    task.spawn(function()
    debounce(7,3,15)
    end)
    else return end
end
function knife4()
    if DBshower.Moves7[4].Activated.Value == false and _G.MoveActive == false then
    _G.MoveActive = true
    friskMoves:InvokeServer({_G.Pass, "RealKnifeBigSlash"})
    _G.MoveActive = false
    task.spawn(function()
    debounce(7,4,27)
    end)
    else return end
end

function preset(name)
    local move = lalala[name]
    if name == "TemmieArmor" then
        _G.tool = "NotBurntPan"
        task.spawn(function() toggleset(7) end)
        task.spawn(function() friskMoves:InvokeServer({_G.Pass, "EquipArmor", "TemmieArmor"}) end)
        task.spawn(function() friskMoves:InvokeServer({_G.Pass, "EquipWeapon", "RelKnife"}) end)
    elseif name == "CowboyHat" then
        _G.tool = "NotBurntPan"
        spawn(function()
        for _, obj in ipairs(wrk:WaitForChild("Live"):GetDescendants()) do
            if obj.Name == "LegendaryHero" then
                friskMoves:InvokeServer({_G.Pass,"UseItem",obj})
            end
        end
        end)
        task.spawn(function() toggleset(7) end)
        task.spawn(function() friskMoves:InvokeServer({_G.Pass, "EquipArmor", "CowboyHat"}) end)
        task.spawn(function() friskMoves:InvokeServer({_G.Pass, "EquipWeapon", "RelKnife"}) end)
    elseif name == "TheLocket" then
        _G.tool = "BurntPan"
        task.spawn(function() toggleset(44) end)
        task.spawn(function() friskMoves:InvokeServer({_G.Pass, "EquipArmor", "TheLocket"}) end)
        task.spawn(function() friskMoves:InvokeServer({_G.Pass, "EquipWeapon", "BurntPan"}) end)
    elseif name == "CloudyGlasses" then
        _G.tool = "NotBurntPan"
        task.spawn(function() toggleset(2) end)
        task.spawn(function() friskMoves:InvokeServer({_G.Pass, "EquipArmor", "CloudyGlasses"}) end)
        task.spawn(function() friskMoves:InvokeServer({_G.Pass, "EquipWeapon", "ToughGloves"}) end)
    end
end
--[[

    Move7 = real knife
    Move6 = dagger
    Move5 = gun
    Move4 = Book 
    Move3 = shoes
    Move2 = gloves
    Move1 = toy knife

--]]
function toggleset(move)
    toggletools(move)
    for _, v in ipairs(DBshower:GetChildren()) do
        if v:IsA("GuiObject") then
            v.Visible = false
        end
    end
    local i = DBshower["Moves" .. move]
    if i then
        i.Visible = true
    end
end

for _, anim in pairs(bsat:GetChildren()) do
    anim:Destroy()
end

for _, anim in pairs(lplr.Backpack.Main.FriskMoves.ModuleScript.Animations.StickCombat:GetChildren()) do
    local clone = anim:Clone()
    clone.Parent = bsat
end

local light4P = bsat.Light4
local light5P = bsat.Light5
local BlockAnim = z("Animation")
BlockAnim.AnimationId = "rbxassetid://3203734026"
local blocked = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(BlockAnim)
function anim(light1, light2, light3, light4, light5, block)
    anims.Light1.AnimationId = light1
    anims.Light2.AnimationId = light2
    anims.Light3.AnimationId = light3
    BlockAnim.AnimationId = block
    blocked = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(BlockAnim)

    if light4 and light4 ~= "" then
        light4P.AnimationId = light4
        light4P.Parent = bsat
    else
        light4P.Parent = lg
    end

    if light5 and light5 ~= "" then
        light5P.AnimationId = light5
        light5P.Parent = bsat
    else
        light5P.Parent = lg
    end
end

function block(actionName, inputState)
    if inputState == Enum.UserInputState.Begin then
        if _G.tool == "BurntPan" then
            friskMoves:InvokeServer({_G.Pass, "PanBlock", true})
            blocked:Play()
        else
            game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer({_G.Pass, "Blocking", true})
            blocked:Play()
        end
        ijudsa = false
    elseif inputState == Enum.UserInputState.End then
        if _G.tool == "BurntPan" then
            friskMoves:InvokeServer({_G.Pass, "PanBlock", false})
            blocked:Stop()
        else
            game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer({_G.Pass, "Blocking", false})
            blocked:Stop()
        end
        ijudsa = true
    end
end


local function Null(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		print("Removed Keyset")
	end
end

UIS.InputBegan:Connect(function(input, gpe)
    if not gpe then
        heldKeys[input.KeyCode] = true
    end
end)

UIS.InputEnded:Connect(function(input)
    heldKeys[input.KeyCode] = false
end)

local function safeWrapper(func, key)
    return function(actionName, inputState, inputObject)
        if heldKeys[key] then return end
        if inputState == Enum.UserInputState.Begin then
            func()
        end
    end
end

function toggletools(id)
    CAS:BindActionAtPriority(
        "Nulled",
        Null,
        false,
        Enum.ContextActionPriority.Low.Value,
        Enum.KeyCode.One,
        Enum.KeyCode.Two,
        Enum.KeyCode.Three,
        Enum.KeyCode.Four
    )
    task.wait()
    if id == 1 then
        anim("rbxassetid://4800254068","rbxassetid://4800262463","rbxassetid://4800258366","rbxassetid://4800266314","","rbxassetid://4808378857")
        CAS:BindActionAtPriority("Toy", safeWrapper(toy, Enum.KeyCode.One), false, Enum.ContextActionPriority.Low.Value, Enum.KeyCode.One)
    elseif id == 2 then
        anim("rbxassetid://4800416901","rbxassetid://5776233108","rbxassetid://4800436094","rbxassetid://4800438618","rbxassetid://4800440761","rbxassetid://3203734026")
        CAS:BindActionAtPriority("Glove", safeWrapper(glove, Enum.KeyCode.One), false, Enum.ContextActionPriority.Low.Value, Enum.KeyCode.One)
    elseif id == 3 then
        anim("rbxassetid://4800624938","rbxassetid://4800629176","rbxassetid://4800630930","rbxassetid://4800624938","rbxassetid://4800633936","rbxassetid://3203734026")
        CAS:BindActionAtPriority("Shoe", safeWrapper(shoe, Enum.KeyCode.One), false, Enum.ContextActionPriority.Low.Value, Enum.KeyCode.One)
    elseif id == 4 then
        anim("rbxassetid://4800738596","rbxassetid://4800745250","rbxassetid://4800747744","rbxassetid://4800749197","","rbxassetid://3203734026")
        CAS:BindActionAtPriority("Book", safeWrapper(book, Enum.KeyCode.One), false, Enum.ContextActionPriority.Low.Value, Enum.KeyCode.One)
    elseif id == 5 then
        anim("rbxassetid://4801030095","rbxassetid://5776251749","rbxassetid://4801036888","rbxassetid://4800624938","rbxassetid://4801041246","rbxassetid://3203734026")
        CAS:BindActionAtPriority("Gun", safeWrapper(gun, Enum.KeyCode.One), false, Enum.ContextActionPriority.Low.Value, Enum.KeyCode.One)
    elseif id == 6 then
        anim("rbxassetid://4800254068","rbxassetid://4800262463","rbxassetid://4800258366","rbxassetid://4800266314","","rbxassetid://4808378857")
        CAS:BindActionAtPriority("Dagger", safeWrapper(toy, Enum.KeyCode.One), false, Enum.ContextActionPriority.Low.Value, Enum.KeyCode.One)
    elseif id == 7 then
        anim("rbxassetid://4800254068","rbxassetid://4800262463","rbxassetid://4800258366","rbxassetid://4800266314","","rbxassetid://4808378857")
        CAS:BindActionAtPriority("RealKnife1", safeWrapper(toy, Enum.KeyCode.One), false, Enum.ContextActionPriority.Low.Value, Enum.KeyCode.One)
        CAS:BindActionAtPriority("RealKnife2", safeWrapper(knife2, Enum.KeyCode.Two), false, Enum.ContextActionPriority.Low.Value, Enum.KeyCode.Two)
        CAS:BindActionAtPriority("RealKnife3", safeWrapper(knife3, Enum.KeyCode.Three), false, Enum.ContextActionPriority.Low.Value, Enum.KeyCode.Three)
        CAS:BindActionAtPriority("RealKnife4", safeWrapper(knife4, Enum.KeyCode.Four), false, Enum.ContextActionPriority.Low.Value, Enum.KeyCode.Four)
    elseif _G.tool == "BurntPan" then
        anim("rbxassetid://4800992305","rbxassetid://4800996691","rbxassetid://4800998325","rbxassetid://4800999598","rbxassetid://4801002022","rbxassetid://4808343910")
    elseif _G.tool == "Stick" then
        anim("rbxassetid://4800158142","rbxassetid://4800160350","rbxassetid://4800163313","rbxassetid://4800165057","rbxassetid://4800167156","rbxassetid://3203734026")
    else
        print("FUCK YOU!!!!!!")
    end
end



--[[

    RelKnife = 7,
    WornDagger = 6,
    EmptyGun = 5,
    TornNotebook = 4,
    BalletShoes = 3,
    ToughGloves = 2,
    ToyKnife = 1

--]]

--[[

    Move7 = real knife
    Move6 = dagger
    Move5 = gun
    Move4 = Book 
    Move3 = shoes
    Move2 = gloves
    Move1 = toy knife

--]]

function AutoHeal(last)
    if conn then return end
    conn = run.RenderStepped:Connect(function()
        if GetHP() >= 99 or not _G.heal then
            conn:Disconnect()
            conn = nil
            spawn(function()
            local s = lchar:FindFirstChild("StainedApron")
            if s then s:Destroy() end
            local t = lchar:FindFirstChild("TemmieArmor")
            if t then t:Destroy() end
            for i = 1, 5 do
                friskMoves:InvokeServer({_G.Pass, "EquipArmor", last})
            end
        end)
            return
        end

        local s = lchar:FindFirstChild("StainedApron")
        if s then s:Destroy() end
        local t = lchar:FindFirstChild("TemmieArmor")
        if t then t:Destroy() end

        local armor = toggle and "StainedApron" or "TemmieArmor"
        friskMoves:InvokeServer({_G.Pass, "EquipArmor", armor})
        toggle = not toggle
    end)
end

-- // Loops // --

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
    end
end)



spawn(function()
    while task.wait() do
        if _G.presetmode then
            _G.heal = true
            for _, btn in ipairs(frame.Armor:GetChildren()) do
                if btn:IsA("ImageButton") then
                    for _, preset in ipairs(unused) do
                        if btn.Name == preset then
                            btn.Visible = false
                            break
                        end
                    end
                end
            end
        else
            for _, btn in ipairs(frame.Armor:GetChildren()) do
                if btn:IsA("ImageButton") then
                    btn.Visible = true
                end
            end
        end
    end
end)

for _, btn in ipairs(frame.Armor:GetChildren()) do
    if btn:IsA("ImageButton") then
        btn.MouseButton1Click:Connect(function()
            if not _G.presetmode then
            friskMoves:InvokeServer({_G.Pass, "EquipArmor", btn.Name})
            print("Armor : "..btn.Name)
            else
                preset(btn.Name)
            end
        end)
    end
end

for _, btn in ipairs(frame.Weapons:GetChildren()) do
    if btn:IsA("ImageButton") then
        btn.MouseButton1Click:Connect(function()
            friskMoves:InvokeServer({_G.Pass, "EquipWeapon", btn.Name})
            _G.tool = btn.Name
            local move = lalala[btn.Name]
            toggleset(move)
            print(move)
            print("Weapon : " .. btn.Name)
        end)
    end
end

function fuckoff()
    if goy == true then
        frame.Visible = false
        game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.UseMouse.Value = false
        goy = false
    else
        frame.Visible = true
        game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.UseMouse.Value = true
        goy = true
    end
end
function healtoggle(actionName, inputState)
    if inputState == Enum.UserInputState.Begin then
        if _G.heal == true then
            _G.heal = false
        else
            
        _G.heal = true
        end
    end
end
function reset()
    frame.Visible = false
    game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.UseMouse.Value = false
    goy = false
end

CAS:BindActionAtPriority("menureset",reset,false,Enum.ContextActionPriority.Low.Value,Enum.KeyCode.Backquote)
CAS:BindActionAtPriority("healtoggle", healtoggle, false, Enum.ContextActionPriority.Low.Value, Enum.KeyCode.G)
CAS:BindActionAtPriority("menu",fuckoff,false,Enum.ContextActionPriority.Low.Value,Enum.KeyCode.E)
CAS:BindActionAtPriority("block",block,false,Enum.ContextActionPriority.Low.Value,Enum.KeyCode.F)
--debounce(5,1)

