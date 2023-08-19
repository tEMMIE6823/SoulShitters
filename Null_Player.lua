-- // SETTINGS \\--
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
local plr = game.Players.LocalPlayer.Character
local SavPos = nil
local stop = false
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Save the current position
local currentPosition = character.HumanoidRootPart.Position

-- Randomize the new position within a certain range
local newPosition = Vector3.new(currentPosition.X + math.random(-20, 20), currentPosition.Y, currentPosition.Z + math.random(-20, 20))
plr:SetPrimaryPartCFrame(CFrame.new(834, 2003, 589))
local part = Instance.new("Part")
part.Size = Vector3.new(30, 1, 30)
part.Position = Vector3.new(834, 1999, 589)
part.Anchored = true
part.Parent = workspace

-- // SETTINGS \\--
local plyrs = game:GetService("Players")

if not _G.pas then 
     _G.pas = function() 
if not _G.passs then 
 local mt = getrawmetatable(game)
    local back = mt.__namecall 
    
if setreadonly then setreadonly(mt,false) else make_writeable(mt,true) end 
    
mt.__namecall = newcclosure(function(...)
    
    local nc = getnamecallmethod() 
local args = {...} 
if tostring(args[1]) == 'Events' and args[2][2] == 'Chatted' and not _G.passs then 
_G.passs = args[2][1]
    return back(unpack(args))
end 
return back(...)
    
    
end)
game.Players:Chat((''))
repeat wait() until _G.passs
return _G.passs
else 
    
return _G.passs

end 

end 
end
workspace.FallenPartsDestroyHeight = 0/0
local pass = _G.pas()
wait()
local fname = 'song.wav'
local mirror = 'https://88rhs6sjzyhgn8x3scgbjqwxmd9uppzjza8bbk2sa9w.000webhostapp.com/Underplayer_1.txt' -- // locatiojn

if not isfile(fname) then
    print('file not found, downloading from mirror')
    local ohTable1 = {
	[1] = pass,
	[2] = "Chatted",
	[3] = " 【 UnderPlayer 】 *\nDownloading "..fname..", this will be quick lol.",
	[4] = Color3.new(1, 1, 1)
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)
    writefile(fname, game:HttpGet(mirror)) -- // This downloads the file from discord, so that you don't have to manually download the file
end
local fname = 'song_2.wav'
local mirror = 'https://88rhs6sjzyhgn8x3scgbjqwxmd9uppzjza8bbk2sa9w.000webhostapp.com/Underplayer_2.txt' -- // locatiojn

if not isfile(fname) then
    print('file not found, downloading from mirror')
    local ohTable1 = {
	[1] = pass,
	[2] = "Chatted",
	[3] = " 【 UnderPlayer 】 *\nDownloading "..fname..", this will be quick lol.",
	[4] = Color3.new(1, 1, 1)
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)
    writefile(fname, game:HttpGet(mirror)) -- // This downloads the file from discord, so that you don't have to manually download the file
end
plr.FullHateMode.Value = true

plr.HateMode.Value = true

wait(1)
local args = {
	[1] = {
		[1] = pass,
		[2] = "ChangeSetting",
		[3] = "DeathScene",
		[4] = false
	}
}

game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))

wait(2.5)
local AuraSound = {
	[1] = pass,
	[2] = "PlaySound",
	[3] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.PatienceAttack.Charge,
	[4] = "workspace[plr].HumanoidRootPart"
}

local function ca(tabee)
local player = game.Players.LocalPlayer;local ff;local tabee = tabee
    for _,v in pairs(player.Character.Humanoid:GetPlayingAnimationTracks()) do 
        v:Stop()
        end
for _,v in pairs(player.Backpack.Main:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'moves') then
for i = 1,#tabee do
v.Animations:WaitForChild(tabee[i][1]).AnimationId = tabee[i][2]
end

end
end

local yea = player.Backpack.Main
local yen  = yea.Name;local main = player.Backpack.Main;
for _,v in pairs(main:GetDescendants()) do
if v.Name == 'Extra' then
extra = v
end
end
for _,v in pairs(main:GetChildren()) do
    if string.find(v.Name,'Moves') and v:IsA('LocalScript') then
main = v ;main.Disabled = true
    end
    end
for _,v in pairs(player.PlayerGui.UI.Ui:GetChildren()) do
er = string.lower(v.Name)
if string.match(er,'move') then
v.Parent = extra
end
end
for _,v in pairs(player.PlayerGui:GetChildren()) do
er = string.lower(v.Name)
if string.find(er,'food') or string.find(er,'weapon')  then
v.Parent = extra
end end


for _,v in pairs(player:GetDescendants()) do
if string.find(string.lower(v.Name),'indicator') and v.Name ~= 'Indicator' then
v.Parent = extra
indn = v.Name
end
end
exn = 0
for _,v in pairs(extra:GetChildren()) do
  if v.Name == indn then
  exn = exn + 1 
if exn > 1 then
  v:Destroy()
end
end 
end
main.Disabled = false
end

function createweight()
local p = Instance.new("Part",game.Players.LocalPlayer.Character)
p.Size = Vector3.new(.5,.5,.5)
p.CanCollide = false
p.CanTouch = false
p.Anchored = true
p.Transparency = 1
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
local camera = workspace.CurrentCamera
local humanoid = game.Players.LocalPlayer.Character.Humanoid
local head = game.Players.LocalPlayer.Character.Head
local subject = p
subject.Position = head.Position
camera.CameraSubject = subject
local WEIGHT = 5
local function updateSubject()
    if UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter then
		local lookXZ = Vector3.new(camera.CFrame.LookVector.X,0,camera.CFrame.LookVector.Z)
		rootPart.CFrame = CFrame.lookAt(rootPart.Position,rootPart.Position + lookXZ)
	end
	if (camera.CFrame.Position - subject.Position).Magnitude < 1 or (camera.CFrame.Position - head.Position).Magnitude < 1 then
		camera.CameraSubject = humanoid
		subject.Position = head.Position
	else
		camera.CameraSubject = subject
		subject.Position = subject.Position:Lerp(head.Position,1/WEIGHT)
	end
end
RunService:BindToRenderStep("UpdateSubject", Enum.RenderPriority.Camera.Value, updateSubject)
end
function createwalk()
    local deffect = game:GetService("ReplicatedStorage").Effects.SoftLandSmoke
spawn(function()
while task.wait() do
for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    if v.Name == "Running" and v:IsA("StringValue") then
        local dirt = deffect:Clone()
        dirt.Parent = game.Players.LocalPlayer.Character.Effects
        dirt.Name = "Cloned"
        dirt.CFrame = game.Players.LocalPlayer.Character["Left Leg"].CFrame
        dirt.Rotation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * game.Players.LocalPlayer.Character["Left Leg"].Position
        game.Debris:AddItem(dirt,.1)
        local dirt2 = deffect:Clone()
        dirt2.Parent = game.Players.LocalPlayer.Character.Effects
        dirt2.Name = "Cloned"
        dirt2.CFrame = game.Players.LocalPlayer.Character["Right Leg"].CFrame
        dirt2.Rotation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * game.Players.LocalPlayer.Character["Right Leg"].Position
        game.Debris:AddItem(dirt2,.1)
    end
end
end
end)
end
local Base = {
{'Idle','rbxassetid://4370508186'},{'Walk','rbxassetid://4370512420'},{'Run','rbxassetid://4370518984 '},{'Block','rbxassetid://5657245133'}
}
ca(Base)
wait()

game:GetService("ReplicatedStorage").Animations.MoveAnimations.CharaFlying.AnimationId = "rbxassetid://4919502087"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4348323561"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4348265296"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4800749197"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4348301706"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4689503513"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4348788816"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.Animations.AreaAttack.AnimationId = "rbxassetid://7501550774"
wait(2)
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
	target = LockOn
	r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
	r2 = m.Hit * CFrame.new(0, 4, 0)
end
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "70"

wait()

local lplr = game.Players.LocalPlayer
ShutUpShittyAuraSoundMan = coroutine.create(function()
    while true do task.wait()
    for _, v in next, plr.Head:GetChildren() do
        if v.Name == "Charge" and v:IsA("Sound") then
            v.Volume = 0
        end
    end
end
end)
plr.Head.HealthBar.Frame.PName.TextColor3 = Color3.fromRGB(255, 255, 255)
plr.Head.HealthBar.Frame.PName.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
local SecondName = plr.Head.HealthBar.Frame.PName:Clone()
SecondName.Name = "CHINGCHONG"
SecondName.Parent = plr.Head.HealthBar.Frame
SecondName.Text = "     PLAYER"
SecondName.TextColor3 = Color3.fromRGB(255, 0, 0)
Aura = coroutine.create(function()
    while wait(5) do
        game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "80"
        plr.RealKnife.Blade.Transparency = 0
plr.RealKnife.Handle.Transparency = 0
plr.RealKnife.HandleC0.Part0 = plr["Right Arm"] 
    end
end)




local args = {
	[1] = {
		[1] = pass,
		[2] = "KnifeColor",
		[3] = "ChangeColor",
		[5] = 1, -- Transition time for each color in seconds
		[6] = "RedMode" -- Initial value
	}
}

local redColor = Color3.fromRGB(255, 0, 0)
local blackColor = Color3.fromRGB(0, 0, 0)

local remote = game:GetService("ReplicatedStorage").Remotes.CharaMoves

local transitionTime = 2 -- Transition time for each color in seconds
local stepsPerTransition = 5 -- Number of steps per transition
local waitTime = transitionTime / stepsPerTransition

local counter = 0

local function getNextMode()
	counter = counter + 1
	if counter % 2 == 0 then
		return "SpecialHell"
	else
		return "RedMode"
	end
end

local function runRainbowAnimation()
	while true do
		for i = 1, stepsPerTransition do
			local t = i / stepsPerTransition
			local interpolatedColor = redColor:Lerp(blackColor, t)
			args[1][4] = interpolatedColor
			args[1][6] = getNextMode()
			remote:InvokeServer(unpack(args))
			wait(waitTime)
		end


		for i = 1, stepsPerTransition do
			local t = i / stepsPerTransition
			local interpolatedColor = blackColor:Lerp(redColor, t)
			args[1][4] = interpolatedColor
			args[1][6] = getNextMode()
			remote:InvokeServer(unpack(args))
			wait(waitTime)
		end

	end
end

shithead = coroutine.create(function()
    while wait() do
     for _, v in pairs(lplr:GetChildren()) do
          if v.Name == 'DeathPlaylist' or v.Name == 'StarterPlaylist' or v.Name == 'Transformation1Playlist'then
              for v, i in pairs(v:GetChildren()) do
                  if i:IsA('Sound') then
                      while true do task.wait()
                           i.SoundId = "rbxassetid://0"
                      end
                  end
              end
          end
     end
     end
end)

local function speedaft()
while task.wait() do
	game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "100"
end
end
function dialog1()
local Base = {
{'Idle','rbxassetid://5079250270'},{'Walk','rbxassetid://5658603994'},{'Run','rbxassetid://5657151699 '},{'Block','rbxassetid://5657245133'}
}
ca(Base)
	plr.Head.iputthenewforgisonthejeep:Destroy()
	local plr = game.Players.LocalPlayer.Character
AnimationId = "4725322859"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = plr.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(0)
    game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "0"
    plr.Humanoid.WalkSpeed = "0"
    local ohTable1 = {
	[1] = pass,
	[2] = "Blocking",
	[3] = false
}

game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(ohTable1)
	wait(2)
plr.Head.iputthenewforgisonthejeep2:Play()
spawn(function()
local ohTable1 = {
	[1] = pass,
	[2] = "Blocking",
	[3] = true
}

game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(ohTable1)
end)

char = game.Players.LocalPlayer.Character
char.Head.ChildAdded:Connect(function(x)
if x.Name == 'DamageShower' and x.Gui.TextLabel.Text == "Blocked" then
x.Gui.TextLabel.Text = "Miss"
spawn(function()
table = {'rbxassetid://3728912921','rbxassetid://3728914916'}
tab = table[math.random(1,#table)]
local Anim = Instance.new("Animation")
Anim.AnimationId = tab
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
end)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
math.randomseed(tick())
local currentPosition = character.HumanoidRootPart.Position
local newPosition = Vector3.new(currentPosition.X + math.random(-40, 40), currentPosition.Y, currentPosition.Z + math.random(-40, 40))
character.HumanoidRootPart.CFrame = CFrame.new(newPosition, newPosition - Vector3.new(0, 1, 0))
currentPosition = character.HumanoidRootPart.Position
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "80"
end
end)
_G.hidechat = false
local mt = getrawmetatable(game)
    local backup = mt.__namecall
    if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
    
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}

        if tostring(args[1]) == 'SayMessageRequest' and _G.hidechat then
        return
        end
        return backup(...)
    end)
game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = pass, 
          [2] = "Chatted", 
          [3] = ' < !NULL_PLAYER! > *\n' ..Chat, 
          [4] = Color3.fromRGB(255, 100, 100)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)

local ohTable1 = {
	[1] = pass,
	[2] = "Chatted",
	[3] = "...",
	[4] = Color3.new(1, 1, 1)
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)


local block1 = {
	[1] = pass,
	[2] = "Blocking",
	[3] = true
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(block1)

plr.RealKnife.Blade.Transparency = 0
plr.RealKnife.Handle.Transparency = 0
wait(3)
local ohTable1 = {
	[1] = pass,
	[2] = "Chatted",
	[3] = "You...",
	[4] = Color3.new(1, 1, 1)
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)
wait(3.5)
local ohTable1 = {
	[1] = pass,
	[2] = "Chatted",
	[3] = "You didnt think this through at all.\nDidnt you?",
	[4] = Color3.new(1, 0.7, 0.7)
}
coroutine.wrap(runRainbowAnimation)()
game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)
k:AdjustSpeed(1.1)
wait(4.5)
local ohTable1 = {
	[1] = pass,
	[2] = "Chatted",
	[3] = "Not to worry..\nI have done this countless times..",
	[4] = Color3.fromRGB(255, 100, 100)
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)

wait(.1)
spawn(function()
    local perseverance = {
        Parent = game.workspace,
        Name = 'red rock',
        Material = Enum.Material.Neon,
        Transparency = 0
    }
    local currentColor = Color3.fromRGB(255, 0, 0)
    local isBlack = false
    local userInputService = game:GetService("UserInputService")
    on = true
    posz = 0
    posx = 0
    local times = 0
    _G.soulsmode = 1
    _G.closed = false
    local effects = game.Players.LocalPlayer.Character.Effects
    local rs = game:GetService("RunService")
    local player = game.Players.LocalPlayer
    local Character = player.Character
    local args = {
        [1] = {
            [1] = _G.pas(),
            [2] = "KnifeProjectileOrange",
            [3] = "Spawn",
            [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *10 + Vector3.new(math.random(0,35),math.random(0,30),math.random(0,33))
        }
    }
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
    local projectiles = game.Players.LocalPlayer.Character.Attacks
    for i,v in pairs(projectiles:GetChildren()) do
        if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
            v:WaitForChild("BodyVelocity").Velocity = Vector3.new(0,0,0)
            v:WaitForChild("ParticleEmitter"):Destroy()
            coroutine.resume(coroutine.create(function()
            	wait(4)
                while wait(0.01) do
                    if _G.closed then
                        break
                    end
                    for i = 1,555 do
                        v.Position = Character.HumanoidRootPart.Position - Vector3.new(math.random(-3,3),1,math.random(-3,3))
                        spawn(function()
                            local args1 = {
                                [1] = {
                                    [1] = _G.pas(),
                                    [2] = "KnifeProjectileOrange",
                                    [3] = "Hit",
                                    [4] = v,
                                    [5] = v.CFrame,
                                    [6] = perseverance
                                }
                            }
                            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args1))
                        end)
                        task.wait()
                    end
                end
            end))
        end
    end
    
    while wait() do
        if isBlack then
            currentColor = Color3.new(0,0,0):Lerp(Color3.fromRGB(255, 0, 0), math.random())
        else
            currentColor = Color3.fromRGB(255, 0, 0):Lerp(Color3.new(0,0,0), math.random())
        end
        
        perseverance.Color = currentColor
        if currentColor == Color3.new(0,0,0) then
            isBlack = true
        elseif currentColor == Color3.fromRGB(255, 0, 0) then
            isBlack = false
        end
    end
end)
Toggle = not Toggle
wait(4.4)
local ohTable1 = {
	[1] = pass,
	[2] = "Chatted",
	[3] = "Ｉ＇ｌｌ　ｍａｋｅ　ｔｈｉｓ　ｑｕｉｃｋ",
	[4] = Color3.new(1, 0, 0)
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)


local currentIndex = 1  -- Keep track of the current index in the animation sequence

wait(1)

coroutine.wrap(speedaft)()
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4689497544"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4348287123"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4689503513"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4689494450"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5973923761"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4348788816"
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "120"
end


local startTime = tick() -- Get the current time

_G.hidechat = false
local mt = getrawmetatable(game)
    local backup = mt.__namecall
    if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
    
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}

        if tostring(args[1]) == 'SayMessageRequest' and _G.hidechat then
        return
        end
        return backup(...)
    end)
game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = pass, 
          [2] = "Chatted", 
          [3] = ' < NULL_PLAYER > *\n' ..Chat, 
          [4] = Color3.new(1,1,1)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)

function Damage(Type) 
for i,v in pairs(game.Workspace:GetChildren()) do 
    local Player = game.Players.LocalPlayer
    if v ~= Player.Character and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Data") then
        local vector = (Player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position)
        if vector.Magnitude <= 25 then
            local args = { 
                        [1] = pass, 
                        [2] = v, 
                        [3] = "Light"..Type
                     }
                     
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            task.wait()
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            task.wait()
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            task.wait()
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
            game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))

        end    
    end
end
end
coroutine.resume(Aura)
coroutine.resume(ShutUpShittyAuraSoundMan)


local function GmChat(d)
	local ohTable1 = {
	[1] = pass,
	[2] = "Chatted",
	[3] = " 【 CONSOLE 】 *\n"..d,
	[4] = Color3.fromRGB(255, 128, 1)
}

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)
end

local function ToggleRocks()
    Toggle = not Toggle -- Flip the value of Toggle

    -- Check the current state of Toggle and perform actions accordingly
    if Toggle then
        -- Toggle is ON, perform actions for the feature being enabled
        GmChat("[TOGGLE] = ROCKS:TRUE")
        spawn(function()
    local perseverance = {
        Parent = game.workspace,
        Name = 'red rock',
        Material = Enum.Material.Neon,
        Transparency = 0
    }
    local currentColor = Color3.fromRGB(255, 0, 0)
    local isBlack = false
    local userInputService = game:GetService("UserInputService")
    on = true
    posz = 0
    posx = 0
    local times = 0
    _G.soulsmode = 1
    _G.closed = false
    local effects = game.Players.LocalPlayer.Character.Effects
    local rs = game:GetService("RunService")
    local player = game.Players.LocalPlayer
    local Character = player.Character
    local args = {
        [1] = {
            [1] = _G.pas(),
            [2] = "KnifeProjectileOrange",
            [3] = "Spawn",
            [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *10 + Vector3.new(math.random(0,35),math.random(0,30),math.random(0,33))
        }
    }
    game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
    local projectiles = game.Players.LocalPlayer.Character.Attacks
    for i,v in pairs(projectiles:GetChildren()) do
        if v.Name == "KnifeSlashProjectileOrange" or "Removing" then
            v:WaitForChild("BodyVelocity").Velocity = Vector3.new(0,0,0)
            v:WaitForChild("ParticleEmitter"):Destroy()
            coroutine.resume(coroutine.create(function()
            	wait(4)
                while wait(0.01) do
                    if _G.closed then
                        break
                    end
                    for i = 1,555 do
                        v.Position = Character.HumanoidRootPart.Position - Vector3.new(math.random(-3,3),1,math.random(-3,3))
                        spawn(function()
                            local args1 = {
                                [1] = {
                                    [1] = _G.pas(),
                                    [2] = "KnifeProjectileOrange",
                                    [3] = "Hit",
                                    [4] = v,
                                    [5] = v.CFrame,
                                    [6] = perseverance
                                }
                            }
                            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args1))
                        end)
                        task.wait()
                    end
                end
            end))
        end
    end
    
    while wait() do
        if isBlack then
            currentColor = Color3.new(0,0,0):Lerp(Color3.fromRGB(255, 0, 0), math.random())
        else
            currentColor = Color3.fromRGB(255, 0, 0):Lerp(Color3.new(0,0,0), math.random())
        end
        
        perseverance.Color = currentColor
        if currentColor == Color3.new(0,0,0) then
            isBlack = true
        elseif currentColor == Color3.fromRGB(255, 0, 0) then
            isBlack = false
        end
    end
end)

    else
        GmChat("[TOGGLE] = ROCKS:FALSE")
        _G.closed = true
        _G.closed = true
        _G.closed = true
        _G.closed = true
        _G.closed = true
        _G.closed = true
        _G.closed = true
        _G.closed = true

    end
end

local function CF()
	GmChat("[ACT] = CHANGE_CFRAME")
	local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
	target = LockOn
	r2 = LockOn.Head.CFrame
elseif not LockOn then
	r2 = m.Hit * CFrame.new(0, 0, 0)
end
plr.HumanoidRootPart.CFrame = CFrame.new(r2.p, plr.HumanoidRootPart.CFrame.UpVector)

end
local function Softlock()
	GmChat("[EXEC] = DEL_USER")
	local LastPos = character.HumanoidRootPart.Position
    plr:SetPrimaryPartCFrame(CFrame.new(999999999, -40, 0))
    local pat1BrTable = {
	    [1] = {
		[1] = pass,
		[2] = "PatienceAttack",
		[3] = Vector3.new(10000000000000000000, 1000000000000000000000, 1000000000000000000000),
		[4] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
	}
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(pat1BrTable))
wait(.4)
plr.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
plr.HumanoidRootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
plr:SetPrimaryPartCFrame(CFrame.new(LastPos))
wait(.8)
if _G.Slam == true then
local pat2BrTable = {
	[1] = {
		[1] = pass,
		[2] = "PatienceAttack2",
		[3] = Vector3.new(10000000000000000000, 1000000000000000000000, 1000000000000000000000),
		[4] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
	}
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(pat2BrTable))
else return
end
end

local function JusBlast()

    local JusticeBlastTab = {
	[1] = pass,
	[2] = "YellowBeam",
	[3] = "Fire"
}
GmChat("[EXEC] = START_JUSBLAST")
Event:InvokeServer(JusticeBlastTab)
end
local function HateSlash()
GmChat("[EXEC] = START_HATE2")
wait()
local HateKnifeSlash = {
	[1] = pass,
	[2] = "SpecialHell2"
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(HateKnifeSlash)
end
local function HateBall()
GmChat("[EXEC] = START_HATE1")
local HateballTable = {
	[1] = pass,
	[2] = "HateBall",
	[3] = "Start",
	[4] = false
}


game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(HateballTable)
end
local function IT()
GmChat("[EXEC] = COPY_IT")
local IT1_tab = {
	[1] = {
		[1] = pass,
		[2] = "IntegrityAttack"
	}
}
local IT2_tab = {
	[1] = {
		[1] = pass,
		[2] = "IntegrityAttack2"
	}
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(IT1_tab))
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(IT2_tab))
end
_G.Slam = false
local function ToggleSLAM()
    Toggle = not Toggle -- Flip the value of Toggle

    -- Check the current state of Toggle and perform actions accordingly
    if Toggle then
        GmChat("[TOGGLE] = SLAM:TRUE")
        _G.Slam = true
        -- Add your feature-specific code here

    else
        GmChat("[TOGGLE] = SLAM:FALSE")
        _G.Slam = false
        -- Add your feature-specific code here

    end
end




local function Bring()
	GmChat("[EXEC] = COPY_PT")
	

local pat1BrTable = {
	    [1] = {
		[1] = pass,
		[2] = "PatienceAttack",
		[3] = Vector3.new(10000000000000000000, 1000000000000000000000, 1000000000000000000000),
		[4] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
	}
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(pat1BrTable))	
    local pat2BrTable = {
	[1] = {
		[1] = pass,
		[2] = "PatienceAttack2",
		[3] = Vector3.new(10000000000000000000, 1000000000000000000000, 1000000000000000000000),
		[4] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
	}
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(pat2BrTable))

end


local function counter1()
GmChat("[EXEC] = SANSMODE:TRUE")
spawn(function()
local ohTable1 = {
	[1] = pass,
	[2] = "Blocking",
	[3] = true
}

game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(ohTable1)
end)

char = game.Players.LocalPlayer.Character
char.Head.ChildAdded:Connect(function(x)
if x.Name == 'DamageShower' and x.Gui.TextLabel.Text == "Blocked" then
x.Gui.TextLabel.Text = "Miss"
spawn(function()
table = {'rbxassetid://3728912921','rbxassetid://3728914916'}
tab = table[math.random(1,#table)]
local Anim = Instance.new("Animation")
Anim.AnimationId = tab
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
end)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
math.randomseed(tick())
local currentPosition = character.HumanoidRootPart.Position
local newPosition = Vector3.new(currentPosition.X + math.random(-40, 40), currentPosition.Y, currentPosition.Z + math.random(-40, 40))
character.HumanoidRootPart.CFrame = CFrame.new(newPosition, newPosition - Vector3.new(0, 1, 0))
currentPosition = character.HumanoidRootPart.Position
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "80"
end
end)
end

local function area_attack()
GmChat("[EXEC] = AREA_ATTACK:1")
local currentPosition = character.HumanoidRootPart.Position
local teleportOffset = Vector3.new(0, 35, 0)
local newPosition = currentPosition + teleportOffset

local args = {
	[1] = {
		[1] = pass,
		[2] = "AreaAttack",
		[3] = "Start"
	}
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end
local function last_resort()
	GmChat("[EXEC] = SHIELD")
local A_1 = {
	[1] = pass,
	[2] = "KnifeShield",
	[3] = true
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
local v1 = { [1] =_G.pas(),  [2] = "Damage",  [3] = "NaN",  [4] = game.Players.LocalPlayer.Character } local event = game:GetService("ReplicatedStorage").Remotes.Events
event:FireServer(v1)

wait(20)
local A_1 = {
	[1] = pass,
	[2] = "KnifeShield",
	[3] = false
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end
local function Proj_ye()
    GmChat("[EXEC] = SPAWN_PROJECTILES:YELLOW")
    local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
	target = LockOn
	r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
	r2 = m.Hit * CFrame.new(0, 4, 0)
end
local eeee = {
	[1] = pass,
	[2] = "KnifeProjectileYellow",
	[3] = "Spawn",
	[4] = r2.p
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(eeee)
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(eeee)

end
local function Heal()
	GmChat("[EXEC] = SET_HP")
    local HealTab = {
	[1] = pass,
	[2] = "KnifeHeal"
}

Event:InvokeServer(HealTab)
end
local function Purp()
	GmChat("[EXEC] = SPAWN_PROJECTILES")
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
	target = LockOn
	r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
	r2 = m.Hit * CFrame.new(0, 4, 0)
end
local args = {
	[1] = {
		[1] = pass,
		[2] = "KnifeProjectileOrange",
		[3] = "Spawn",
		[4] = r2.p
	}
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
task.wait()
local args = {
	[1] = {
		[1] = pass,
		[2] = "KnifeProjectilePurple",
		[3] = "Spawn",
		[4] = r2.p
	}
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
local eeee = {
	[1] = pass,
	[2] = "KnifeProjectileDarkRed",
	[3] = "Spawn",
	[4] = r2.p
}


local eeeeR = {
	[1] = pass,
	[2] = "KnifeProjectile",
	[3] = "Spawn",
	[4] = r2.p
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(eeee)
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(eeeeR)
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(eeeeR)
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(eeeeR)
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(eeeeR)
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(eeeeR)
end

function GrabNear() 
for i,v in pairs(game.Workspace:GetChildren()) do 
    local Player = game.Players.LocalPlayer
    if v ~= Player.Character and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Data") then
        local vector = (Player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position)
        if vector.Magnitude <= 60 then
            local pat22BrTable = {
					[1] = {
							[1] = pass,
							[2] = "PatienceAttack2",
							[3] = Vector3.new(10000000000000000000, 1000000000000000000000, 1000000000000000000000),
							[4] = v,
	}
}
                     
            game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(pat22BrTable))

        end    
    end
end
end
local function Countered()
spawn(function()
local ohTable1 = {
	[1] = pass,
	[2] = "Blocking",
	[3] = true
}

game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(ohTable1)
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://5660982711"
local r = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
r:Play()
r:AdjustSpeed(1.5)
char = game.Players.LocalPlayer.Character
char.Head.ChildAdded:Connect(function(x)
if x.Name == 'DamageShower' and x.Gui.TextLabel.Text == "Blocked" then
x.Gui.TextLabel.Text = "Miss"
spawn(function()
table = {'rbxassetid://3728912921','rbxassetid://3728914916'}
tab = table[math.random(1,#table)]
local Anim = Instance.new("Animation")
Anim.AnimationId = tab
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1.5)
end)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
math.randomseed(tick())
local currentPosition = character.HumanoidRootPart.Position
local args = {
	[1] = {
		[1] = pass,
		[2] = "AreaAttack",
		[3] = "Start"
	}
}


local currentPosition = character.HumanoidRootPart.Position
local teleportOffset = Vector3.new(0, 35, 0)
local newPosition = currentPosition + teleportOffset
character.HumanoidRootPart.CFrame = CFrame.new(newPosition)
local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
m = game.Players.LocalPlayer:GetMouse()
if LockOn then
	target = LockOn
	r2 = target.HumanoidRootPart.CFrame
elseif not LockOn then
	r2 = m.Hit * CFrame.new(0, 4, 0)
end
GrabNear()
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

r:Stop()
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "80"
local ohTable1 = {
	[1] = pass,
	[2] = "Blocking",
	[3] = false
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(ohTable1)
end
end)
wait(3)
r:Stop()
local ohTable1 = {
	[1] = pass,
	[2] = "Blocking",
	[3] = false
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(ohTable1)
end
local function death()
GmChat("[EXEC] = KILL: NULL_PLAYER")
local ohTable1 = {
	[1] = pass,
	[2] = "Blocking",
	[3] = true
}
game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(ohTable1)
local v1 = { [1] =_G.pas(),  [2] = "Damage",  [3] = "Inf",  [4] = game.Players.LocalPlayer.Character } local event = game:GetService("ReplicatedStorage").Remotes.Events
event:FireServer(v1)
event:FireServer(v1)
wait(1)
event:FireServer(v1)
event:FireServer(v1)
wait(1)
event:FireServer(v1)
end

local function ResetFunVal()
GmChat("[EXEC] = RESET:FUN_VALUES")
plr.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
plr.HumanoidRootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
plr:SetPrimaryPartCFrame(CFrame.new(834, 400, 189))
end



local PLAYERS_INFO = Instance.new("ScreenGui")
                        local Frame = Instance.new("Frame")
                        local UICorner = Instance.new("UICorner")
                        local Frame_2 = Instance.new("Frame")
                        local Frame_3 = Instance.new("Frame")
                        local UICorner_2 = Instance.new("UICorner")
                        local Frame_4 = Instance.new("Frame")
                        local ImageLabel = Instance.new("ImageLabel")
                        local Frame_5 = Instance.new("Frame")
                        local LockedOn = Instance.new("TextLabel")
                        local Nickname = Instance.new("TextLabel")
                        local ManaText = Instance.new("TextLabel")
                        local Mana = Instance.new("TextLabel")
                        local BlockText = Instance.new("TextLabel")
                        local DEF = Instance.new("TextLabel")
                        local ATKText = Instance.new("TextLabel")
                        local ATK = Instance.new("TextLabel")
                        local YourHPText = Instance.new("TextLabel")
                        local YourHP = Instance.new("TextLabel")
                        local DEFText = Instance.new("TextLabel")
                        local Type = Instance.new("TextLabel")
                        local HP = Instance.new("TextLabel")
                        local HPText = Instance.new("TextLabel")
                        local StamText = Instance.new("TextLabel")
                        local Stam = Instance.new("TextLabel")
                        local TypeText = Instance.new("TextLabel")
                        local Block = Instance.new("TextLabel")

                        --Properties:
                        --game.CoreGui.PLAYERS_INFO:Remove()
                        PLAYERS_INFO.Name = "PLAYERS_INFO"
                        PLAYERS_INFO.Parent = game.CoreGui
                        PLAYERS_INFO.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

                        Frame.Parent = PLAYERS_INFO
                        Frame.AnchorPoint = Vector2.new(0.5, 0)
                        Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                        Frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
                        Frame.BorderSizePixel = 5
                        Frame.Position = UDim2.new(0.5, 0, 0, -236)
                        Frame.Size = UDim2.new(0, 710, 0, 260)
                        Frame.ZIndex = 0

                        UICorner.CornerRadius = UDim.new(0, 18)
                        UICorner.Parent = Frame

                        Frame_2.Parent = Frame
                        Frame_2.AnchorPoint = Vector2.new(0.5, 0)
                        Frame_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                        Frame_2.BorderColor3 = Color3.fromRGB(255, 0, 0)
                        Frame_2.BorderSizePixel = 0
                        Frame_2.Position = UDim2.new(0.5, 0, 0, -5)
                        Frame_2.Size = UDim2.new(0, 710, 0, 50)

                        Frame_3.Parent = Frame
                        Frame_3.AnchorPoint = Vector2.new(0.5, 0)
                        Frame_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                        Frame_3.BorderColor3 = Color3.fromRGB(255, 0, 0)
                        Frame_3.BorderSizePixel = 5
                        Frame_3.Position = UDim2.new(0.5, 0, 0, 0)
                        Frame_3.Size = UDim2.new(0, 700, 0, 250)
                        Frame_3.ZIndex = 2

                        UICorner_2.CornerRadius = UDim.new(0, 18)
                        UICorner_2.Parent = Frame_3

                        Frame_4.Parent = Frame_3
                        Frame_4.AnchorPoint = Vector2.new(0.5, 0)
                        Frame_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                        Frame_4.BackgroundTransparency = 1.000
                        Frame_4.BorderColor3 = Color3.fromRGB(255, 0, 0)
                        Frame_4.BorderSizePixel = 0
                        Frame_4.Position = UDim2.new(0.5, 0, 0, 0)
                        Frame_4.Size = UDim2.new(0, 700, 0, 50)
                        Frame_4.ZIndex = 3

                        ImageLabel.Parent = Frame_4
                        ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        ImageLabel.BorderSizePixel = 0
                        ImageLabel.Size = UDim2.new(1, 0, 1, 0)
                        ImageLabel.ZIndex = 3
                        ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                        ImageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)

                        Frame_5.Parent = Frame_3
                        Frame_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Frame_5.BackgroundTransparency = 1.000
                        Frame_5.Size = UDim2.new(1, 0, 1, 0)
                        Frame_5.ZIndex = 4

                        LockedOn.Name = "LockedOn"
                        LockedOn.Parent = Frame_5
                        LockedOn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        LockedOn.BackgroundTransparency = 1.000
                        LockedOn.Size = UDim2.new(0, 230, 0, 50)
                        LockedOn.Font = Enum.Font.Arcade
                        LockedOn.Text = "LOCKED ON:"
                        LockedOn.TextColor3 = Color3.fromRGB(255, 255, 255)
                        LockedOn.TextScaled = true
                        LockedOn.TextSize = 56.000
                        LockedOn.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        LockedOn.TextStrokeTransparency = 1.000
                        LockedOn.TextWrapped = true
                        LockedOn.TextXAlignment = Enum.TextXAlignment.Left

                        Nickname.Name = "Nickname"
                        Nickname.Parent = Frame_5
                        Nickname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Nickname.BackgroundTransparency = 1.000
                        Nickname.Position = UDim2.new(0, 230, 0, 0)
                        Nickname.Size = UDim2.new(0, 270, 0, 50)
                        Nickname.Font = Enum.Font.Arcade
                        Nickname.Text = "NICKNAME"
                        Nickname.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Nickname.TextScaled = true
                        Nickname.TextSize = 56.000
                        Nickname.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        Nickname.TextStrokeTransparency = 1.000
                        Nickname.TextWrapped = true
                        Nickname.TextXAlignment = Enum.TextXAlignment.Left

                        ManaText.Name = "ManaText"
                        ManaText.Parent = Frame_5
                        ManaText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        ManaText.BackgroundTransparency = 1.000
                        ManaText.Position = UDim2.new(0, 330, 0, 100)
                        ManaText.Size = UDim2.new(0, 120, 0, 50)
                        ManaText.Font = Enum.Font.Arcade
                        ManaText.Text = "MANA:"
                        ManaText.TextColor3 = Color3.fromRGB(255, 255, 255)
                        ManaText.TextScaled = true
                        ManaText.TextSize = 56.000
                        ManaText.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        ManaText.TextStrokeTransparency = 1.000
                        ManaText.TextWrapped = true
                        ManaText.TextXAlignment = Enum.TextXAlignment.Left

                        Mana.Name = "Mana"
                        Mana.Parent = Frame_5
                        Mana.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Mana.BackgroundTransparency = 1.000
                        Mana.Position = UDim2.new(0, 450, 0, 100)
                        Mana.Size = UDim2.new(0, 160, 0, 50)
                        Mana.Font = Enum.Font.Arcade
                        Mana.Text = "100/100"
                        Mana.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Mana.TextScaled = true
                        Mana.TextSize = 56.000
                        Mana.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        Mana.TextStrokeTransparency = 1.000
                        Mana.TextWrapped = true
                        Mana.TextXAlignment = Enum.TextXAlignment.Left

                        BlockText.Name = "BlockText"
                        BlockText.Parent = Frame_5
                        BlockText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        BlockText.BackgroundTransparency = 1.000
                        BlockText.Position = UDim2.new(0, 0, 0, 150)
                        BlockText.Size = UDim2.new(0, 140, 0, 50)
                        BlockText.Font = Enum.Font.Arcade
                        BlockText.Text = "BLOCK:"
                        BlockText.TextColor3 = Color3.fromRGB(255, 255, 255)
                        BlockText.TextScaled = true
                        BlockText.TextSize = 56.000
                        BlockText.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        BlockText.TextStrokeTransparency = 1.000
                        BlockText.TextWrapped = true
                        BlockText.TextXAlignment = Enum.TextXAlignment.Left

                        DEF.Name = "DEF"
                        DEF.Parent = Frame_5
                        DEF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        DEF.BackgroundTransparency = 1.000
                        DEF.Position = UDim2.new(0, 350, 0, 50)
                        DEF.Size = UDim2.new(0, 70, 0, 50)
                        DEF.Font = Enum.Font.Arcade
                        DEF.Text = "100"
                        DEF.TextColor3 = Color3.fromRGB(255, 255, 255)
                        DEF.TextScaled = true
                        DEF.TextSize = 56.000
                        DEF.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        DEF.TextStrokeTransparency = 1.000
                        DEF.TextWrapped = true
                        DEF.TextXAlignment = Enum.TextXAlignment.Left

                        ATKText.Name = "ATKText"
                        ATKText.Parent = Frame_5
                        ATKText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        ATKText.BackgroundTransparency = 1.000
                        ATKText.Position = UDim2.new(0, 440, 0, 50)
                        ATKText.Size = UDim2.new(0, 100, 0, 50)
                        ATKText.Font = Enum.Font.Arcade
                        ATKText.Text = "ATK:"
                        ATKText.TextColor3 = Color3.fromRGB(255, 255, 255)
                        ATKText.TextScaled = true
                        ATKText.TextSize = 56.000
                        ATKText.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        ATKText.TextStrokeTransparency = 1.000
                        ATKText.TextWrapped = true
                        ATKText.TextXAlignment = Enum.TextXAlignment.Left

                        ATK.Name = "ATK"
                        ATK.Parent = Frame_5
                        ATK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        ATK.BackgroundTransparency = 1.000
                        ATK.Position = UDim2.new(0, 540, 0, 50)
                        ATK.Size = UDim2.new(0, 70, 0, 50)
                        ATK.Font = Enum.Font.Arcade
                        ATK.Text = "100"
                        ATK.TextColor3 = Color3.fromRGB(255, 255, 255)
                        ATK.TextScaled = true
                        ATK.TextSize = 56.000
                        ATK.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        ATK.TextStrokeTransparency = 1.000
                        ATK.TextWrapped = true
                        ATK.TextXAlignment = Enum.TextXAlignment.Left

                        YourHPText.Name = "YourHPText"
                        YourHPText.Parent = Frame_5
                        YourHPText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        YourHPText.BackgroundTransparency = 1.000
                        YourHPText.Position = UDim2.new(0, 0, 0, 200)
                        YourHPText.Size = UDim2.new(0, 190, 0, 50)
                        YourHPText.Font = Enum.Font.Arcade
                        YourHPText.Text = "YOUR HP:"
                        YourHPText.TextColor3 = Color3.fromRGB(255, 255, 255)
                        YourHPText.TextScaled = true
                        YourHPText.TextSize = 56.000
                        YourHPText.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        YourHPText.TextStrokeTransparency = 1.000
                        YourHPText.TextWrapped = true
                        YourHPText.TextXAlignment = Enum.TextXAlignment.Left

                        YourHP.Name = "YourHP"
                        YourHP.Parent = Frame_5
                        YourHP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        YourHP.BackgroundTransparency = 1.000
                        YourHP.Position = UDim2.new(0, 190, 0, 200)
                        YourHP.Size = UDim2.new(0, 160, 0, 50)
                        YourHP.Font = Enum.Font.Arcade
                        YourHP.Text = "100/100"
                        YourHP.TextColor3 = Color3.fromRGB(255, 255, 255)
                        YourHP.TextScaled = true
                        YourHP.TextSize = 56.000
                        YourHP.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        YourHP.TextStrokeTransparency = 1.000
                        YourHP.TextWrapped = true
                        YourHP.TextXAlignment = Enum.TextXAlignment.Left

                        DEFText.Name = "DEFText"
                        DEFText.Parent = Frame_5
                        DEFText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        DEFText.BackgroundTransparency = 1.000
                        DEFText.Position = UDim2.new(0, 250, 0, 50)
                        DEFText.Size = UDim2.new(0, 100, 0, 50)
                        DEFText.Font = Enum.Font.Arcade
                        DEFText.Text = "DEF:"
                        DEFText.TextColor3 = Color3.fromRGB(255, 255, 255)
                        DEFText.TextScaled = true
                        DEFText.TextSize = 56.000
                        DEFText.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        DEFText.TextStrokeTransparency = 1.000
                        DEFText.TextWrapped = true
                        DEFText.TextXAlignment = Enum.TextXAlignment.Left

                        Type.Name = "Type"
                        Type.Parent = Frame_5
                        Type.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Type.BackgroundTransparency = 1.000
                        Type.Position = UDim2.new(0, 130, 0, 100)
                        Type.Size = UDim2.new(0, 200, 0, 50)
                        Type.Font = Enum.Font.Arcade
                        Type.Text = "Undyne"
                        Type.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Type.TextScaled = true
                        Type.TextSize = 56.000
                        Type.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        Type.TextStrokeTransparency = 1.000
                        Type.TextWrapped = true
                        Type.TextXAlignment = Enum.TextXAlignment.Left

                        HP.Name = "HP"
                        HP.Parent = Frame_5
                        HP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        HP.BackgroundTransparency = 1.000
                        HP.Position = UDim2.new(0, 70, 0, 50)
                        HP.Size = UDim2.new(0, 160, 0, 50)
                        HP.Font = Enum.Font.Arcade
                        HP.Text = "100/100"
                        HP.TextColor3 = Color3.fromRGB(255, 255, 255)
                        HP.TextScaled = true
                        HP.TextSize = 56.000
                        HP.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        HP.TextStrokeTransparency = 1.000
                        HP.TextWrapped = true
                        HP.TextXAlignment = Enum.TextXAlignment.Left

                        HPText.Name = "HPText"
                        HPText.Parent = Frame_5
                        HPText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        HPText.BackgroundTransparency = 1.000
                        HPText.Position = UDim2.new(0, 0, 0, 50)
                        HPText.Size = UDim2.new(0, 70, 0, 50)
                        HPText.Font = Enum.Font.Arcade
                        HPText.Text = "HP:"
                        HPText.TextColor3 = Color3.fromRGB(255, 255, 255)
                        HPText.TextScaled = true
                        HPText.TextSize = 56.000
                        HPText.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        HPText.TextStrokeTransparency = 1.000
                        HPText.TextWrapped = true
                        HPText.TextXAlignment = Enum.TextXAlignment.Left

                        StamText.Name = "StamText"
                        StamText.Parent = Frame_5
                        StamText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        StamText.BackgroundTransparency = 1.000
                        StamText.Position = UDim2.new(0, 330, 0, 150)
                        StamText.Size = UDim2.new(0, 120, 0, 50)
                        StamText.Font = Enum.Font.Arcade
                        StamText.Text = "STAM:"
                        StamText.TextColor3 = Color3.fromRGB(255, 255, 255)
                        StamText.TextScaled = true
                        StamText.TextSize = 56.000
                        StamText.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        StamText.TextStrokeTransparency = 1.000
                        StamText.TextWrapped = true
                        StamText.TextXAlignment = Enum.TextXAlignment.Left

                        Stam.Name = "Stam"
                        Stam.Parent = Frame_5
                        Stam.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Stam.BackgroundTransparency = 1.000
                        Stam.Position = UDim2.new(0, 450, 0, 150)
                        Stam.Size = UDim2.new(0, 160, 0, 50)
                        Stam.Font = Enum.Font.Arcade
                        Stam.Text = "100/100"
                        Stam.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Stam.TextScaled = true
                        Stam.TextSize = 56.000
                        Stam.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        Stam.TextStrokeTransparency = 1.000
                        Stam.TextWrapped = true
                        Stam.TextXAlignment = Enum.TextXAlignment.Left

                        TypeText.Name = "TypeText"
                        TypeText.Parent = Frame_5
                        TypeText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TypeText.BackgroundTransparency = 1.000
                        TypeText.Position = UDim2.new(0, 0, 0, 100)
                        TypeText.Size = UDim2.new(0, 130, 0, 50)
                        TypeText.Font = Enum.Font.Arcade
                        TypeText.Text = "TYPE:"
                        TypeText.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TypeText.TextScaled = true
                        TypeText.TextSize = 56.000
                        TypeText.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        TypeText.TextStrokeTransparency = 1.000
                        TypeText.TextWrapped = true
                        TypeText.TextXAlignment = Enum.TextXAlignment.Left

                        Block.Name = "Block"
                        Block.Parent = Frame_5
                        Block.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Block.BackgroundTransparency = 1.000
                        Block.Position = UDim2.new(0, 140, 0, 150)
                        Block.Size = UDim2.new(0, 150, 0, 50)
                        Block.Font = Enum.Font.Arcade
                        Block.Text = "False"
                        Block.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Block.TextScaled = true
                        Block.TextSize = 56.000
                        Block.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        Block.TextStrokeTransparency = 1.000
                        Block.TextWrapped = true
                        Block.TextXAlignment = Enum.TextXAlignment.Left

                        -- Scripts:
						


                        local function WWIF_fake_script() -- Frame_5.LocalScript
                            local script = Instance.new("LocalScript", Frame_5)

                            -- -236
                            -- -36
                            local function f(a)
                                if script.Parent:FindFirstChild(a) == nil then
                                    print("OH SHIT")
                                end
                                return script.Parent:FindFirstChild(a) == nil
                            end
                            local onTop = true
                            local TweenService = game:GetService("TweenService")
                            local tweenInfo =
                                TweenInfo.new(
                                1, -- Time
                                Enum.EasingStyle.Quad, -- EasingStyle
                                Enum.EasingDirection.InOut, -- EasingDirection
                                0, -- RepeatCount (when less than zero the tween will loop indefinitely)
                                false, -- Reverses (tween will reverse once reaching it's goal)
                                0 -- DelayTime
                            )
                            local tweenToTop =
                                TweenService:Create(
                                script.Parent.Parent.Parent,
                                tweenInfo,
                                {Position = UDim2.new(0.5, 0, 0, -236)}
                            )
                            local tweenToBottom =
                                TweenService:Create(
                                script.Parent.Parent.Parent,
                                tweenInfo,
                                {Position = UDim2.new(0.5, 0, 0, -36)}
                            )
                            
                            
                            local Toggle = false -- Initial state of the toggle

-- Function to handle the toggle state change
local function rrr()
    Toggle = not Toggle -- Flip the value of Toggle

    -- Check the current state of Toggle and perform actions accordingly
    if Toggle then
        -- Toggle is ON, perform actions for the feature being enabled
        tweenToBottom:Play()
        -- Add your feature-specific code here

    else
        -- Toggle is OFF, perform actions for the feature being disabled
        tweenToTop:Play()
        -- Add your feature-specific code here

    end
end

-- Connect the function to a user input event, such as a button click or key press
local userInputService = game:GetService("UserInputService")
userInputService.InputBegan:Connect(function(input, isProcessed)
    if isProcessed then return end -- Skip if the input is already processed

    -- Check for the specific input you want to use for toggling the feature
    if input.KeyCode == Enum.KeyCode.Q then -- Example: Toggle with the "F" key
        rrr()
    end
end)

                            
                            
                            local function moveToTop()
                                if onTop then
                                    return
                                end
                                script.Parent.Nickname.Text = "nil"
                                script.Parent.Type.Text = "nil"
                                script.Parent.HP.Text = "NaN/NaN"
                                script.Parent.DEF.Text = "NaN"
                                script.Parent.ATK.Text = "NaN"
                                script.Parent.Block.Text = "nil"
                                script.Parent.Stam.Text = "NaN/NaN"
                                script.Parent.Mana.Text = "NaN/NaN"
                                onTop = true
                                tweenToBottom:Pause()
                                tweenToTop:Play()
                            end
                            local function moveToBottom()
                                if not onTop then
                                    return
                                end
                                onTop = false
                                tweenToTop:Pause()
                                tweenToBottom:Play()
                            end
                            
   
                            while game:GetService("RunService").Heartbeat:Wait() do
                                if
                                    f("Nickname") or f("Type") or f("HP") or f("DEF") or f("ATK") or f("Block") or
                                        f("Stam") or
                                        f("Mana")
                                 then
                                continue
                                end
                                if game.Players.LocalPlayer.Character ~= nil then
                                    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil then
                                        script.Parent.YourHP.Text = plr.Humanoid.Health.."/"..plr.Humanoid.MaxHealth
                                                                                else
                                        script.Parent.YourHP.Text = "NaN/NaN"
                                    end
                                else
                                    script.Parent.YourHP.Text = "NaN/NaN"
                                end
                                if disable_lock_info then
                                    moveToTop()
                                    continue
                                end
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Main") == nil then
                                    moveToTop()
                                continue
                                end
                                if game.Players.LocalPlayer.Backpack.Main:FindFirstChild("LockOnScript") == nil then
                                    moveToTop()
                                continue
                                end
                                if game.Players.LocalPlayer.Backpack.Main.LockOnScript:FindFirstChild("LockOn") == nil then
                                    moveToTop()
                                continue
                                end
                                local nickname = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                                if nickname == nil then
                                    moveToTop()
                                    continue
                                end
                                if game.Workspace:FindFirstChild(nickname.Name) == nil then
                                    moveToTop()
                                    continue
                                end
                                nickname = nickname.Name
                                moveToBottom()
                                script.Parent.Nickname.Text = nickname
                                if game.Workspace[nickname]:FindFirstChild("Type") ~= nil then
                                    script.Parent.Type.Text = game.Workspace[nickname].Type.Value
                                else
                                    script.Parent.Type.Text = "nil"
                                end
                                if game.Workspace[nickname]:FindFirstChild("Humanoid") ~= nil then
                                    script.Parent.HP.Text =
                                        math.ceil(game.Workspace[nickname].Humanoid.Health) ..
                                        "/" .. math.ceil(game.Workspace[nickname].Humanoid.MaxHealth)
                                else
                                    script.Parent.HP.Text = "NaN/NaN"
                                end
                                if game.Workspace[nickname]:FindFirstChild("Data") == nil then
                                    script.Parent.DEF.Text = "NaN"
                                    script.Parent.ATK.Text = "NaN"
                                    script.Parent.Block.Text = "nil"
                                    script.Parent.Stam.Text = "NaN/NaN"
                                    script.Parent.Mana.Text = "NaN/NaN"
                                continue
                                end
                                if game.Workspace[nickname].Data:FindFirstChild("Defense") ~= nil then
                                    script.Parent.DEF.Text = math.ceil(game.Workspace[nickname].Data.Defense.Value)
                                else
                                    script.Parent.DEF.Text = "NaN"
                                end
                                if game.Workspace[nickname].Data:FindFirstChild("Attack") ~= nil then
                                    script.Parent.ATK.Text = math.ceil(game.Workspace[nickname].Data.Attack.Value)
                                else
                                    script.Parent.ATK.Text = "NaN"
                                end
                                if game.Workspace[nickname].Data:FindFirstChild("Blocking") ~= nil then
                                    if game.Workspace[nickname].Data.Blocking.Value then
                                        script.Parent.Block.Text = "True"
                                    else
                                        script.Parent.Block.Text = "False"
                                    end
                                else
                                    script.Parent.Block.Text = "nil"
                                end
                                local sprintMax = "NaN"
                                local sprint = "NaN"
                                if game.Workspace[nickname].Data:FindFirstChild("SprintMeter") ~= nil then
                                    sprint = math.ceil(game.Workspace[nickname].Data.SprintMeter.Value)
                                else
                                    sprint = "NaN"
                                end
                                if game.Workspace[nickname].Data:FindFirstChild("MaxSprintMeter") ~= nil then
                                    sprintMax = math.ceil(game.Workspace[nickname].Data.MaxSprintMeter.Value)
                                else
                                    sprintMax = "NaN"
                                end
                                local staminaMax = "NaN"
                                local stamina = "NaN"
                                if game.Workspace[nickname].Data:FindFirstChild("Stamina") ~= nil then
                                    stamina = math.ceil(game.Workspace[nickname].Data.Stamina.Value)
                                else
                                    stamina = "NaN"
                                end
                                if game.Workspace[nickname].Data:FindFirstChild("MaxStamina") ~= nil then
                                    staminaMax = math.ceil(game.Workspace[nickname].Data.MaxStamina.Value)
                                else
                                    staminaMax = "NaN"
                                end
                                script.Parent.Stam.Text = sprint .. "/" .. sprintMax
                                script.Parent.Mana.Text = stamina .. "/" .. staminaMax
                            end
                        end
                        
                        coroutine.wrap(WWIF_fake_script)()

    



-- // KEYBINDS!!! \\
coroutine.resume(shithead)
plr:SetPrimaryPartCFrame(CFrame.new(834, 400, 189))
local ohTable1 = {
	[1] = pass,
	[2] = "Blocking",
	[3] = true
}


game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.Nine and not processed then
        ResetFunVal()
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.E and not processed then
        Countered()
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.Equals and not processed then
        death()
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.Backquote and not processed then
        area_attack()
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.V and not processed then
        JusBlast()
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.B and not processed then
        Bring()
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.G and not processed then
        Heal()
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.R and not processed then
        CF()
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.H and not processed then
        counter1()
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.X and not processed then
        IT()
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.P and not processed then
        Softlock()
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.Period and not processed then
        ToggleSLAM()
    end
end)
local sound = Instance.new("Sound")
sound.Parent = plr.Head
sound.Name = "iputthenewforgisonthejeep"
sound.SoundId = getcustomasset("song.wav")
sound.PlaybackSpeed = 1
sound.Volume = 2.8
sound.Looped = true
sound:Play()

sound2 = Instance.new("Sound")
sound2.Parent = plr.Head
sound2.Name = "iputthenewforgisonthejeep2"
sound2.SoundId = getcustomasset("song_2.wav")
sound2.PlaybackSpeed = 1
sound2.Volume = 5
sound2.Looped = true
local ohTable1 = {
	[1] = pass,
	[2] = "Chatted",
	[3] = " 【 CONSOLE 】 *\nUser: NULL_PLAYER has joined the game.",
	[4] = Color3.fromRGB(255, 128, 1)
	
}
plr.HateArm:Destroy()
plr.HeartLocket:Destroy()

plr.RealKnife.Blade.Transparency = 0
plr.RealKnife.Handle.Transparency = 0
plr.RealKnife.Trail:Destroy()

wait(1)
local plr = game.Players.LocalPlayer.Character
AnimationId = "4575983939"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
    local k = plr.Humanoid:LoadAnimation(Anim)
    k:Play() --Play the animation
    k:AdjustSpeed(1.5)

game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)

eeee = coroutine.create(function()
while true do
	plr.Head.HealthBar.Frame.PName.Text = "NULL_PLAYER"

task.wait()

end
end)
coroutine.resume(eeee)
print("\n\nKEYBINDS FOR PHASE 1\n\nQ to toggle menu\nE for counter\nNine to reset fun value(very useful if you got flung or voided)\nEquals to die and go to second phase\nBackquote for area attack\n\nX for integ(dark blue)\nV for justice blast (Good for combos)\nB to bring and smash the user on the ground\nG to heal HP\nR for infinite range teleport\nP to softlock retards\nPeroid to toggle slam mode(Will slam if you try softlock people)")
print("\n\nKEYBINDS FOR PHASE 2\n\nH for sansmode\n~ for Area_Attack\nQ for block\nU for last resort shield\nT for purple slashes n stuff\nZ for hate slash\nC for hate ball")

repeat wait() until plr.Humanoid.Health == 0
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.U and not processed then
        last_resort()
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.T and not processed then
        Purp()
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.Z and not processed then
        HateSlash()
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.C and not processed then
        HateBall()
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.Zero and not processed then
        ToggleRocks()
    end
end)

dialog1()
