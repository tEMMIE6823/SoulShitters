-- Fix coming soon

game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
wait(1)
--SCRIPT MADE BY temmie_au, Reap, Elite
--ANIMATIONS PROVIDED BY KingDream, Reap
-- USE KRNL FOR THIS SHIT
-- USE KRNL FOR THIS SHIT
--  USE THE LOADSTRING IF YOU WANT UPDATES, PATCHES AND MORE
--  USE THE LOADSTRING IF YOU WANT UPDATES, PATCHES AND MORE
--  USE THE LOADSTRING IF YOU WANT UPDATES, PATCHES AND MORE
--  USE THE LOADSTRING IF YOU WANT UPDATES, PATCHES AND MORE
-- USE KRNL FOR THIS SHIT
-- USE KRNL FOR THIS SHIT
-- USE KRNL FOR THIS SHIT
-- USE KRNL FOR THIS SHIT
-- USE KRNL FOR THIS SHIT
-- USE KRNL FOR THIS SHIT
-- USE KRNL FOR THIS SHIT
-- USE KRNL FOR THIS SHIT
-- USE KRNL FOR THIS SHIT
-- USE KRNL FOR THIS SHIT
-- USE KRNL FOR THIS SHIT
-- USE KRNL FOR THIS SHIT
-- USE KRNL FOR THIS SHIT
-- USE KRNL FOR THIS SHIT
spawn(function()
	local lplr = game.Players.LocalPlayer
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

Instance.new('StringValue',game.Players.LocalPlayer.Character).Name = 'Battling'
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 250
function Download(name,ext,link)
	local function ea(assetid)
		return string.format("rbxthumb://type=Asset&id=%s&w=420&h=420",assetid)
	end
	local function mf(tab)
		local t
		for i = 1,#tab do
			t = tab[i]
			if i > 1 then t = tab[1]..'/'..tab[i] end
			if not isfile(t) then
				makefolder(t)
			end
		end
		return t..'/'
	end
	local function wf(st,a)
		if not isfile(st) then local y = a
			if string.find(a,'https://www.mediafire') or string.find(a,'https://cdn.discordapp.com/attachments/') then 
				local request = request or syn.request 
				local response = request({Url = a, Method = "GET"}) 




				local url = response.Body
				if not string.find(a,'https://cdn.discordapp.com/attachments') then

					local split = string.split(url,"https://download")[2] 
					for i = 1,string.len(split) do
						local yes = string.sub(split,i,i)
						if string.find(yes,'"') then
							y = "https://download"..string.sub(split,1,i-1)
							break
						end
					end

					writefile(st,game:HttpGet(y))
				else 
					writefile(st,response.Body)

				end 


			else 
				error('Invalid link, Mediafire or discord attachment links only')
			end
		end
		local getasset = getsynasset or getcustomasset

		return getasset(st)
	end
	game:GetService("StarterGui"):SetCore("SendNotification", { Title = "Music Loading.."; Text = "Downloading "..name.."."..ext; Duration = 5 })
	repeat wait() until wf(name..'.'..ext,link)
end
Download("Countdown","mp3","https://cdn.discordapp.com/attachments/1129677788899721238/1137605467087048815/GzyjtCv.mp3")
Download("Dt","mp3","https://cdn.discordapp.com/attachments/1129677788899721238/1138652003917119519/p7m9GWG.mp3")
Download("Darkness","mp3","https://cdn.discordapp.com/attachments/1129677788899721238/1137605467766525952/DbGybf1.mp3")
Download("Calamity","mp3","https://cdn.discordapp.com/attachments/1129677788899721238/1136264468549091439/Y03qwWg.mp3")
Download("Chara_Hate","mp3","https://cdn.discordapp.com/attachments/1129677788899721238/1137605468257267784/ljVrFFN.mp3")
Download("Prev","mp3","https://cdn.discordapp.com/attachments/1129677788899721238/1137605468609577040/TZFKRYJ.mp3")
Download("Brav","mp3","https://cdn.discordapp.com/attachments/1129677788899721238/1137605468987068416/Fp4EmYW.mp3")
Download("Pat","mp3","https://cdn.discordapp.com/attachments/1129677788899721238/1138065642264743936/z8g5pCs.mp3")
Download("Kind","mp3","https://cdn.discordapp.com/attachments/1129677788899721238/1136150232082686083/cKKF6Jc.mp3")
Download("Just","mp3","https://cdn.discordapp.com/attachments/1129677788899721238/1136150231671640165/pJxa8Mh.mp3")
Download("Freedom","mp3","https://cdn.discordapp.com/attachments/1129677788899721238/1137611992845262978/yRiIEuE.mp3")
Download("Integ","mp3","https://cdn.discordapp.com/attachments/1129677788899721238/1138064294001508436/wianUcm.mp3")
Download("Voice1","mp3","https://cdn.discordapp.com/attachments/1129677788899721238/1138680034933084160/RzOOxqT.mp3")
function SongChange(songName)
	wait(0)
	game.Workspace.MainSong.SoundId = getcustomasset(songName..".mp3")
	game.Workspace.MainSong.Volume = 2.8
	game.Workspace.MainSong.TimePosition = 0
end
local plr = game.Players.LocalPlayer.Character
local sound = Instance.new("Sound")
sound.Parent = game.Workspace
sound.Name = "MainSong"
sound.SoundId = getcustomasset("Countdown.mp3")
sound.PlaybackSpeed = 1
sound.Volume = 2.8
sound.Looped = true
sound:Play()
spawn(function()
	while true do
		game['Run Service'].Heartbeat:wait()
		if plr and plr.HumanoidRootPart:FindFirstChild("Server") then
			plr.HumanoidRootPart.Server:Destroy()
		end
	end
end)
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
local args = {
	[1] = {
		[1] = pass,
		[2] = "ChangeSetting",
		[3] = "DeathScene",
		[4] = true
	}
}

game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
detect = game.Players.LocalPlayer.Character.Head.ChildAdded:Connect(function(pp)
	if pp.Name == "Voice" then
		pp.SoundId = getcustomasset("Voice1.mp3")

	end
end)
local TweenService = game:GetService("TweenService")
game.Players.LocalPlayer.Character.Head.ChildAdded:Connect(function(pp)
    if pp.Name == "TextBar" and pp:FindFirstChild("TextLabel") then
		local textLabel = pp.TextLabel
		local cor = coroutine.create(function()
            while true do
                local originalText = textLabel.Text
                local glitchedText = ""
                
                for _, char in ipairs(originalText:split("")) do
                    local glitchChar = char
                    if math.random() > 0.7 then
                        glitchChar = string.char(math.random(32, 126))
                    end
                    glitchedText = glitchedText .. glitchChar
                end
                
                textLabel.Text = glitchedText
                wait(0.1)  -- Adjust the delay as needed
                textLabel.Text = originalText
                wait(0.2)  -- Adjust the delay as needed
            end
        end)

        coroutine.resume(cor)
		wait()
        
        textLabel.TextColor3 = _G.txx

        
    end
end)



local CAS = game:GetService("ContextActionService")

plr.Head.HealthBar.Frame.PName:Destroy()
plr.Head.HealthBar.Frame.HP:Destroy()
plr.Head.HealthBar.Frame.StaminaBar:Destroy()
plr.Head.HealthBar.Frame.HealthLabel:Destroy()




game.Players.LocalPlayer.Chatted:Connect(function(Chat)
	local A_1 =  {
		[1] = pass,
		[2] = "Chatted",
		[3] = "  The First Fallen Child  *\n  "..Chat.."  ",
		[4] = Color3.new(1,0,0)
	}
	local Event = game:GetService("ReplicatedStorage").Remotes.Events
	Event:FireServer(A_1)
end)

function ReAnimate(idle,walk,run,block)
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
		{'Idle','rbxassetid://'..idle},{'Walk','rbxassetid://'..walk},{'Run','rbxassetid://'..run},{'Block','rbxassetid://'..block},{'AreaAttack','rbxassetid://11038425927'},{'PatienceKnife','rbxassetid://11295195778'},{'Yellow1','rbxassetid://11068783805'},{'DashAttack','rbxassetid://11295195778'},{'Shield','rbxassetid://6544645998'},{'Heal','rbxassetid://10760719918'}
	}
	local function stopAllAnimations(character)
		local humanoid = character:FindFirstChild("Humanoid")
		if humanoid then
			for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
				track:Stop()
			end
		end
	end

	ca(Base)
	game.Workspace.Gravity = 50

	
	game.Players.LocalPlayer.Chatted:Connect(function(Chat)
		local A_1 =  {
			[1] = pass,
			[2] = "Chatted",
			[3] = "  The First Fallen Child  *\n  "..Chat.."  ",
			[4] = Color3.new(1,0,0)
		}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1)
	end)
end


-- ATTACK FUNCTIONS!!!!!!!!!!!!!!!!!!!!
-- ATTACK FUNCTIONS!!!!!!!!!!!!!!!!!!!!
-- ATTACK FUNCTIONS!!!!!!!!!!!!!!!!!!!!
-- ATTACK FUNCTIONS!!!!!!!!!!!!!!!!!!!!

-- RED MODE
-- RED MODE
local function JusticeBlast(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://11068783805"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		wait(1)
		local A_1 = {
			[1] = pass,
			[2] = "YellowBeam",
			[3] = "Fire"
		}
		local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
		Event:InvokeServer(A_1)
	end
end
local function DTSlashes(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
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
				[2] = "KnifeProjectile",
				[3] = "Spawn",
				[4] = r2.p
			}
		}

		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
	end
end
local function DTArea(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://11038425927"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		wait(1.8)
		local chatter = {
			[1] = pass,
			[2] = "Chatted",
			[3] = "Welcome to my SPECIAL Hell =)",
			[4] = Color3.new(1,0,0)
		}

		game:GetService("ReplicatedStorage").Remotes.Events:FireServer(chatter)
		local args = {
			[1] = {
				[1] = pass,
				[2] = "AreaAttack",
				[3] = "Start"
			}
		}

		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))

	end
end
local function DTSlash4(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
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
				[2] = "KnifeProjectileDarkRed",
				[3] = "Spawn",
				[4] = r2.p
			}
		}

		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
	end
end
-- YELLOW MODE
local function YellowProj(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		m = game.Players.LocalPlayer:GetMouse()
		if LockOn then
			target = LockOn
			r2 = target.HumanoidRootPart.CFrame
		elseif not LockOn then
			r2 = m.Hit * CFrame.new(0, 4, 0)
		end
		local A_1 =  {
			[1] = _G.pas(), 
			[2] = "KnifeProjectileYellow", 
			[3] = "Spawn", 
			[4] = r2.p
		}
		local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
		Event:InvokeServer(A_1)
	end
end
-- LIGHT BLUE MODE
local function Bring(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		local args = {
			[1] = {
				[1] = pass,
				[2] = "PatienceAttack",
				[3] = Vector3.new(10000000000000000000, 1000000000000000000000, 1000000000000000000000),
				[4] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			}
		}

		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
	end
end
local function Slam(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		local args = {
			[1] = {
				[1] = pass,
				[2] = "PatienceAttack2",
				[3] = Vector3.new(10000000000000000000, 1000000000000000000000, 1000000000000000000000),
				[4] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
			}
		}

		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
	end
end
-- DARK BLUE MODE
local function Integ1(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		local args = {
			[1] = {
				[1] = pass,
				[2] = "IntegrityAttack"
			}
		}

		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
	end
end
local function Integ2(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		local args = {
			[1] = {
				[1] = pass,
				[2] = "IntegrityAttack2"
			}
		}

		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
	end
end
local function Shield1(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://6544645998"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
		wait(0.3)
		local A_1 = {
			[1] = pass,
			[2] = "KnifeShield",
			[3] = true
		}
		local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
		Event:InvokeServer(A_1)
		wait(10)
		local A_1 = {
			[1] = pass,
			[2] = "KnifeShield",
			[3] = false
		}
		local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
		Event:InvokeServer(A_1)
	end
end
local function Heal(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://10760719918"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1.4)
		wait(0.9)
		local A_1 = {
			[1] = pass,
			[2] = "KnifeHeal"
		}
		local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
		Event:InvokeServer(A_1)
	end
end
local function Hate1(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		local A_1 = {
			[1] = pass,
			[2] = "HateBall",
			[3] = "Start",
			[4] = false
		}
		local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
		Event:InvokeServer(A_1)
	end
end
local function Hate2(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then

		local A_1 = {
			[1] = pass,
			[2] = "SpecialHell2"
		}
		local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
		Event:InvokeServer(A_1)
		
	end
end
local function Softlock(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		local currentPosition = plr.HumanoidRootPart.Position
		plr:SetPrimaryPartCFrame(CFrame.new(-9999999, -9999999, -9999999))
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
		plr:SetPrimaryPartCFrame(CFrame.new(currentPosition))
	end
end
local function Nulled(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		print("Removed Keyset")
	end
end


local function SpawnRocks(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		spawn(function()
			local userInputService = game:GetService("UserInputService")

			local on = true
			local posz = 0
			local posx = 0

			local times = 0
			_G.Mode = Determination
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
					[4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 10 + Vector3.new(math.random(0, 35), math.random(0, 30), math.random(0, 33))
				}
			}
			game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
			local projectiles = game.Players.LocalPlayer.Character.Attacks
			for i, v in pairs(projectiles:GetChildren()) do
				if v.Name == "KnifeSlashProjectileOrange" or v.Name == "Removing" then
					v:WaitForChild("BodyVelocity").Velocity = Vector3.new(0, 0, 0)
					v:WaitForChild("ParticleEmitter"):Destroy()
					coroutine.resume(coroutine.create(function()
						
						while wait(0.01) do
							if _G.closed then
								break
							end
							v.Position = Character.HumanoidRootPart.Position - Vector3.new(math.random(-3, 3), 17, math.random(-3, 3))
							spawn(function()
								local args1 = {
									[1] = {
										[1] = _G.pas(),
										[2] = "KnifeProjectileOrange",
										[3] = "Hit",
										[4] = v,
										[5] = v.CFrame,
										[6] = _G.MaterialInfo
									}
								}
								game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args1))
							end)
							task.wait(.2)
						end
					end))
				end
			end
		end)
	end
end
local function CF(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
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
end
local function Purple(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
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
				[2] = "KnifeProjectilePurple",
				[3] = "Spawn",
				[4] = r2.p
			}
		}

		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
	end
end

local function SansMode2(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		if not Blocking then
			Blocking = true
			print("Blocking")
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


		else
			Blocking = false
			remotes.Functions:InvokeServer({pass, "Blocking", false})
			return
		end
		local invEffect = true
task.delay(30,function()
    invEffect = false
end)
task.spawn(function()
    while invEffect == true do
        for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
            v:Fire({"HighlightBody", game.Players.LocalPlayer.Character, 0.2, Color3.new(1,1,1), 0.9, nil, nil, nil, nil})
        end
        task.wait(0.4)
    end
end)
		wait(30)
		local ohTable1 = {
			[1] = pass,
			[2] = "Blocking",
			[3] = false
		}

		game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(ohTable1)
	end
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
local blasted = nil                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     print("Doggo is a skid and a pedo, dont trust his ass\n\nscript made by temmie_au\nanyone else saying otherwise is a loser who doesnt know shit\n\n#HexariaOnTop")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
local function Counter2(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then

		spawn(function()
			local ohTable1 = {
				[1] = pass,
				[2] = "Blocking",
				[3] = true
			}

			game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(ohTable1)
			
		end)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5802162934"
		local r = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		r:Play()
		r:AdjustSpeed(1.5)
		char = game.Players.LocalPlayer.Character
		wait(1)
		r:AdjustSpeed(0)
		char.Head.ChildAdded:Connect(function(x)
			if x.Name == 'DamageShower' and x.Gui.TextLabel.Text == "Blocked" then
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local teleportDistance = 10
local newPosition = humanoidRootPart.Position - (humanoidRootPart.CFrame.lookVector * teleportDistance)
humanoidRootPart.CFrame = CFrame.new(newPosition, newPosition + humanoidRootPart.CFrame.lookVector)

				x.Gui.TextLabel.Text = "Miss"
				spawn(function()
					table = {'rbxassetid://7518197546','rbxassetid://7518197546'}
					tab = table[math.random(1,#table)]
					local Anim = Instance.new("Animation")
					Anim.AnimationId = tab
					local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
					k:Play()
					k:AdjustSpeed(1)
				end)
				local player = game.Players.LocalPlayer
				local character = player.Character or player.CharacterAdded:Wait()
				math.randomseed(tick())
				local currentPosition = character.HumanoidRootPart.Position
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://7518197546"
				local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
				k:Play()
				k:AdjustSpeed(1.5)

				local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
				m = game.Players.LocalPlayer:GetMouse()
				if LockOn then
					target = LockOn
					r2 = target.HumanoidRootPart.CFrame
				elseif not LockOn then
					r2 = m.Hit * CFrame.new(0, 4, 0)
				end
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
		GrabNear()
		wait(0.5)
		local ohTable1 = {
			[1] = pass,
			[2] = "PlaySound",
			[3] = game:GetService("ReplicatedStorage").Objects.Moves.DeltaBlaster.Sound.Fire,
			[4] = plr.Head
		}
		
		game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(ohTable1)
		local A_1 = {
			[1] = pass,
			[2] = "YellowBeam",
			[3] = "Fire"
		}
		local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
		Event:InvokeServer(A_1)     
		
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
		local invEffect = true
task.delay(3,function()
    invEffect = false
end)
task.spawn(function()
    while invEffect == true do
        for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
            v:Fire({"HighlightBody", game.Players.LocalPlayer.Character, 0.2, Color3.new(1,0,0), 0.9, nil, nil, nil, nil})
        end
        task.wait(0.4)
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
end
local function Counter(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then

		print("Blocking")
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
		local invEffect = true
		local Finhsed = false
task.delay(5,function()
    invEffect = false
end)
task.spawn(function()
    while invEffect == true do
        for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
            v:Fire({"HighlightBody", game.Players.LocalPlayer.Character, 0.3, Color3.new(1,0,0), 0.7, nil, nil, nil, nil})
        end
        task.wait(0.4)
    end
end)
wait(5)
		r:Stop()
		local ohTable1 = {
			[1] = pass,
			[2] = "Blocking",
			[3] = false
		}
		game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(ohTable1)





	end
end
local sitstart = Instance.new("Animation") 
sitstart.AnimationId = "rbxassetid://7507477136" 
local sitstartplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitstart)
local sitloop = Instance.new("Animation") 
sitloop.AnimationId = "rbxassetid://7507481748" 
local sitloopplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitloop)
local sitend = Instance.new("Animation") 
sitend.AnimationId = "rbxassetid://7507485912" 
local sitendplay = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(sitend) 
local sitting = false 
local mouse = game.Players.LocalPlayer:GetMouse()
local function Sit(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then

		if sitting == false then 
			sitting = true

			wait()

			sitstartplay:Play() 
			wait(1)
			sitloopplay:Play()
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
		elseif sitting == true then 
			sitting = false
			sitloopplay:Stop() 
			sitendplay:Play()
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		end
	end 
end
local function OrangeProj(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
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
	end
end
local function KKKExploitFr(actionName, inputState, inputObject)
	if inputState == Enum.UserInputState.Begin then
		local players = game:GetService("Players")
        local function check(plr)
            local args = {
                [1] = {
                    [1] = "Start"
                }
            }
        
            if plr.Backpack.Main.BunnyMoves then
                
                plr.Backpack.Main.BunnyMoves.Final.Remotes.Fire:InvokeServer(unpack(args))
                
            else
                warn(plr.Name .. " does not have Bunny Moves.")
            end
        end
        
        for _, player in ipairs(players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                spawn(function()
                    check(player)
                end)
            end
        end
    end
end



























CAS:BindActionAtPriority(
	"CF",
	CF,
	false,
	Enum.ContextActionPriority.Low.Value,
	Enum.KeyCode.R
)
CAS:BindActionAtPriority(
	"SpawnRocks",
	SpawnRocks,
	false,
	Enum.ContextActionPriority.Low.Value,
	Enum.KeyCode.Equals
)
CAS:BindActionAtPriority(
	"Softlock",
	Softlock,
	false,
	Enum.ContextActionPriority.Low.Value,
	Enum.KeyCode.P
)
CAS:BindActionAtPriority(
	"Sit",
	Sit,
	false,
	Enum.ContextActionPriority.Low.Value,
	Enum.KeyCode.Y
)
function Rotate(PATHTOTHEOBJECT)
    local tweeninfo = TweenInfo.new(0.8, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut, 0, false, 0)

    local rot =  PATHTOTHEOBJECT.Rotation

    local tween1 = game:GetService("TweenService"):Create(PATHTOTHEOBJECT, tweeninfo, { Rotation = rot - 3 })
    local tween2 = game:GetService("TweenService"):Create(PATHTOTHEOBJECT, tweeninfo, { Rotation = rot + 3 })

    local cor = coroutine.create(function()
        while wait(0.1) do
            tween1:Play()
            tween1.Completed:Wait()
            tween2:Play()
            tween2.Completed:Wait()
        end
    end)

    coroutine.resume(cor)
end
local UndoCol = {
	[1] = pass,
	[2] = "KnifeColor",
	[3] = "Reverse"
}

local TransformSound = {
	[1] = pass,
	[2] = "PlaySound",
	[3] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2.Fire,
	[4] = game.Workspace
}
local PreTransformSound = {
	[1] = pass,
	[2] = "PlaySound",
	[3] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.PatienceAttack.Charge,
	[4] = game.Workspace
}

	_G.MaterialInfo = {
		Parent = game.workspace,
		Name = 'Rock',
		Material = Enum.Material.Neon,
		Color = Color3.fromRGB(255, 0, 0),
		Transparency = 0
	}
	wait(2)
	spawn(function()
		local userInputService = game:GetService("UserInputService")
	
		local on = true
		local posz = 0
		local posx = 0
	
		local times = 0
		_G.Mode = Determination
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
				[4] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 10 + Vector3.new(math.random(0, 35), math.random(0, 30), math.random(0, 33))
			}
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
		local projectiles = game.Players.LocalPlayer.Character.Attacks
		for i, v in pairs(projectiles:GetChildren()) do
			if v.Name == "KnifeSlashProjectileOrange" or v.Name == "Removing" then
				v:WaitForChild("BodyVelocity").Velocity = Vector3.new(0, 0, 0)
				v:WaitForChild("ParticleEmitter"):Destroy()
				coroutine.resume(coroutine.create(function()
	
					while wait(0.01) do
						if _G.closed then
							break
						end
						v.Position = Character.HumanoidRootPart.Position - Vector3.new(math.random(-3, 3), 17, math.random(-3, 3))
						spawn(function()
							local args1 = {
								[1] = {
									[1] = _G.pas(),
									[2] = "KnifeProjectileOrange",
									[3] = "Hit",
									[4] = v,
									[5] = v.CFrame,
									[6] = _G.MaterialInfo
								}
							}
							game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args1))
						end)
						task.wait(.2)
					end
				end))
			end
		end
	end)





-- ATTACK FUNCTIONS!!!!!!!!!!!!!!!!!!!!
-- ATTACK FUNCTIONS!!!!!!!!!!!!!!!!!!!!
-- ATTACK FUNCTIONS!!!!!!!!!!!!!!!!!!!!
-- ATTACK FUNCTIONS!!!!!!!!!!!!!!!!!!!!
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Mode = Instance.new("TextLabel")

Rotate(Mode)
--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.Active = true
Frame.AnchorPoint = Vector2.new(1, 1)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.999983549, 0, 0.759259284, 0)
Frame.Size = UDim2.new(0, 358, 0, 73)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.25040862, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 223, 0, 31)
TextLabel.Font = Enum.Font.Arcade
TextLabel.Text = "Current mode:"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Mode.Name = "Mode"
Mode.Parent = Frame
Mode.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Mode.BackgroundTransparency = 1.000
Mode.BorderColor3 = Color3.fromRGB(0, 0, 0)
Mode.BorderSizePixel = 0
Mode.Position = UDim2.new(0.24717702, 0, 0.533333361, 0)
Mode.Size = UDim2.new(0, 227, 0, 31)
Mode.Font = Enum.Font.Arcade
Mode.Text = "Determination"
Mode.TextColor3 = Color3.fromRGB(255, 10, 10)
Mode.TextScaled = true
Mode.TextSize = 14.000
Mode.TextWrapped = true

local valuesTable = {
	"Determination",
	"Justice",
	"Bravery",
	"Patience",
	"Integrity",
	"Kindness",
	"Perseverance",
	"Hate",
}

local currentIndex = 1

local function switchValue(forward)
    
	if forward then
		currentIndex = currentIndex + 1
		if currentIndex > #valuesTable then
			currentIndex = 1
		end
	else
		currentIndex = currentIndex - 1
		if currentIndex < 1 then
			currentIndex = #valuesTable
		end
	end

	Mode.Text = valuesTable[currentIndex]
	_G.Mode = valuesTable[currentIndex]

	if _G.Mode == "Determination" then
		Mode.TextColor3 = Color3.fromRGB(255, 10, 10)
	elseif _G.Mode == "Justice" then
		Mode.TextColor3 = Color3.fromRGB(255, 255, 10)
	elseif _G.Mode == "Bravery" then
		Mode.TextColor3 = Color3.fromRGB(255, 110, 0)
	elseif _G.Mode == "Patience" then
		Mode.TextColor3 = Color3.fromRGB(5, 252, 236)
	elseif _G.Mode == "Integrity" then
		Mode.TextColor3 = Color3.fromRGB(0, 60, 255)
	elseif _G.Mode == "Kindness" then
		Mode.TextColor3 = Color3.fromRGB(0, 255, 13) 
	elseif _G.Mode == "Perseverance" then
		Mode.TextColor3 = Color3.fromRGB(194, 3, 252) 
	elseif _G.Mode == "Hate" then
		Mode.TextColor3 = Color3.fromRGB(0, 0, 0)
	else
		print("INVALID MODE: " .. _G.Mode)
	end
end

local function onKeyPressed(key)
    
	if key == "q" or key == "Q" then
		switchValue(true) 
        
		
	elseif key == "e" or key == "E" then
		switchValue(false) 
        
	end
end





local userInputService = game:GetService("UserInputService")
userInputService.InputBegan:Connect(function(input, gameProcessed)
	if not gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard then
		onKeyPressed(input.KeyCode.Name:lower())
	end
end)

_G.txx = Color3.fromRGB(255, 10, 10)

_G.Mode = "Determination"
function check()
	CAS:BindActionAtPriority(
		"Nulled",
		Nulled,
		false,
		Enum.ContextActionPriority.Low.Value,
		Enum.KeyCode.One,
		Enum.KeyCode.Two,
		Enum.KeyCode.Three,
		Enum.KeyCode.Four,
		Enum.KeyCode.Five,
		Enum.KeyCode.Six,
		Enum.KeyCode.Seven,
		Enum.KeyCode.Eight
	)
	
	if _G.Mode == "Determination" then
		SongChange("Countdown")
		ReAnimate(3786720640,2,2,2)
		_G.MaterialInfo = {
			Parent = game.workspace,
			Name = 'COLORWOO',
			Material = Enum.Material.Neon,
			Color = Color3.fromRGB(255, 10, 10),
			Transparency = 0
		}
		_G.txx = Color3.fromRGB(255, 10, 10)
		game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = _G.txx
		local knifecolord = {
			[1] = {
				[1] = pass,
				[2] = "KnifeColor",
				[3] = "ChangeColor",
				[4] = Color3.fromRGB(255, 10, 10) --[[Color3]],
				[5] = 0,
				[6] = "RedMode"
			}
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(knifecolord))
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4689497544"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4348287123"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4689503513"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4689494450"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5973923761"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4348788816"
        local A_1 =  {
            [1] = pass,
            [2] = "Chatted",
            [3] = " Determination *",
            [4] = Color3.new(1,0,0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
		plr.Humanoid.JumpPower = 40
		CAS:BindActionAtPriority(
			"DTArea",
			DTArea,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.Three
		)
		CAS:BindActionAtPriority(
			"JusticeBlast",
			JusticeBlast,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.One
		)
		CAS:BindActionAtPriority(
			"DTSlashes",
			DTSlashes,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.Two
		)
		CAS:BindActionAtPriority(
			"DTSlash4",
			DTSlash4,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.Four
		)
		game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "50"
	elseif _G.Mode == "Justice" then
        local A_1 =  {
            [1] = pass,
            [2] = "Chatted",
            [3] = " Justice *",
            [4] = Color3.new(1,0,0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
		ReAnimate(4684237024,4684281026,4370518984,3203734026)
		SongChange("Just")
		_G.MaterialInfo = {
			Parent = game.workspace,
			Name = 'COLORWOO',
			Material = Enum.Material.Neon,
			Color = Color3.fromRGB(255, 255, 10),
			Transparency = 0
		}
		_G.txx = Color3.fromRGB(255, 255, 10)
		game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = _G.txx
		local knifecolord = {
			[1] = {
				[1] = pass,
				[2] = "KnifeColor",
				[3] = "ChangeColor",
				[4] = Color3.fromRGB(255, 255, 10),
				[5] = 0,
				[6] = "YellowMode"
			}
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(knifecolord))
		game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "70"
		plr.Humanoid.JumpPower = 30
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4801030095"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://5776251749"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4801036888"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4800624938"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4800254068"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4800749197"
		CAS:BindActionAtPriority(
			"YellowProj",
			YellowProj,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.Two
		)
		CAS:BindActionAtPriority(
			"JusticeBlast",
			JusticeBlast,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.One
		)

	elseif _G.Mode == "Bravery" then
        local A_1 =  {
            [1] = pass,
            [2] = "Chatted",
            [3] = " Bravery *",
            [4] = Color3.new(1,0,0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
		ReAnimate(10811932876,6492491612,6492501335,3203734026)
		SongChange("Brav")
		_G.MaterialInfo = {
			Parent = game.workspace,
			Name = 'COLORWOO',
			Material = Enum.Material.Neon,
			Color = Color3.fromRGB(255, 110, 0),
			Transparency = 0
		}
		_G.txx = Color3.fromRGB(255, 110, 0)
		game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = _G.txx
		local knifecolord = {
			[1] = {
				[1] = pass,
				[2] = "KnifeColor",
				[3] = "ChangeColor",
				[4] = Color3.fromRGB(255, 110, 0),
				[5] = 0,
				[6] = "OrangeMode"
			}
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(knifecolord))
		game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "90"
		plr.Humanoid.JumpPower = 40
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://5667196296"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://5776233108"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://5667206665"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://6154047231"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4800440761"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://5667194069"
		CAS:BindActionAtPriority(
			"OrangeProj",
			OrangeProj,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.One
		)
		CAS:BindActionAtPriority(
			"Counter2",
			Counter2,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.Two
		)
        CAS:BindActionAtPriority(
	    "KKKExploitFr",
	    KKKExploitFr,
	    false,
	    Enum.ContextActionPriority.Low.Value,
	    Enum.KeyCode.Three
        )
	elseif _G.Mode == "Patience" then
        local A_1 =  {
            [1] = pass,
            [2] = "Chatted",
            [3] = " Patience *",
            [4] = Color3.new(1,0,0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
		SongChange("Pat")
		ReAnimate(5026896608,3728845466,3728873938,6117137595)
		_G.MaterialInfo = {
			Parent = game.workspace,
			Name = 'COLORWOO',
			Material = Enum.Material.Neon,
			Color = Color3.fromRGB(5, 252, 236),
			Transparency = 0
		}
		_G.txx = Color3.fromRGB(5, 252, 236)
		game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = _G.txx
		local knifecolord = {
			[1] = {
				[1] = pass,
				[2] = "KnifeColor",
				[3] = "ChangeColor",
				[4] = Color3.fromRGB(5, 252, 236),
				[5] = 0,
				[6] = "LightBlueMode"
			}
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(knifecolord))
		plr.Humanoid.JumpPower = 70
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4357851278"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4357872409"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4357890370"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4357902460"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4357907686"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4300091335"
		CAS:BindActionAtPriority(
			"Bring",
			Bring,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.One
		)
		CAS:BindActionAtPriority(
			"Slam",
			Slam,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.Two
		)
		CAS:BindActionAtPriority(
			"SansMode2",
			SansMode2,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.Three
		)  
		game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "40"
	elseif _G.Mode == "Integrity" then
        local A_1 =  {
            [1] = pass,
            [2] = "Chatted",
            [3] = " Integrity *",
            [4] = Color3.new(1,0,0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
		ReAnimate(7005139602,4370512420,4370518984,3203734026)
		SongChange("Integ")
		_G.MaterialInfo = {
			Parent = game.workspace,
			Name = 'COLORWOO',
			Material = Enum.Material.Neon,
			Color = Color3.fromRGB(0, 60, 255),
			Transparency = 0
		}
		_G.txx = Color3.fromRGB(0, 60, 255)
		game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = _G.txx
		local knifecolord = {
			[1] = {
				[1] = pass,
				[2] = "KnifeColor",
				[3] = "ChangeColor",
				[4] = Color3.fromRGB(0, 60, 255),
				[5] = 0,
				[6] = "BlueMode"
			}
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(knifecolord))
		game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "60"
		plr.Humanoid.JumpPower = 25
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4906030889"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://5667194069"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://5667196296"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://5667206665"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4300123660"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://5667215116"
		CAS:BindActionAtPriority(
			"Integ1",
			Integ1,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.One
		)
		CAS:BindActionAtPriority(
			"Integ2",
			Integ2,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.Two
		)
	elseif _G.Mode == "Kindness" then
        local A_1 =  {
            [1] = pass,
            [2] = "Chatted",
            [3] = " Kindness *",
            [4] = Color3.new(1,0,0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
		ReAnimate(6136039008,4370512420,5863512780,3290775773)
		SongChange("Freedom")
		_G.MaterialInfo = {
			Parent = game.workspace,
			Name = 'COLORWOO',
			Material = Enum.Material.Neon,
			Color = Color3.fromRGB(0, 255, 13),
			Transparency = 0
		}
		_G.txx = Color3.fromRGB(0, 255, 13)
		game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = _G.txx
		local knifecolord = {
			[1] = {
				[1] = pass,
				[2] = "KnifeColor",
				[3] = "ChangeColor",
				[4] = Color3.fromRGB(0, 255, 13),
				[5] = 0,
				[6] = "GreenMode"
			}
		}
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(knifecolord))
		game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "100"
		plr.Humanoid.JumpPower = 50
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4300117017"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4300123660"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4300185517"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4300190994"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4300194950"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4800266314"
		CAS:BindActionAtPriority(
			"Shield1",
			Shield1,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.One
		)
		CAS:BindActionAtPriority(
			"Heal",
			Heal,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.Two
		)
	elseif _G.Mode == "Perseverance" then
        local A_1 =  {
            [1] = pass,
            [2] = "Chatted",
            [3] = " Perseverance *",
            [4] = Color3.new(1,0,0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
		ReAnimate(4457237823,4457246944,4457250928,4290724438)
		CAS:BindActionAtPriority(
			"Purple",
			Purple,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.One
		)
		CAS:BindActionAtPriority(
			"Counter",
			Counter,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.Two
		)
		SongChange("Kind")
		_G.MaterialInfo = {
			Parent = game.workspace,
			Name = 'COLORWOO',
			Material = Enum.Material.Neon,
			Color = Color3.fromRGB(194, 3, 252),
			Transparency = 0
		}
		_G.txx = Color3.fromRGB(194, 3, 252)
		game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = _G.txx
		local knifecolord = {
			[1] = {
				[1] = pass,
				[2] = "KnifeColor",
				[3] = "ChangeColor",
				[4] = Color3.fromRGB(194, 3, 252),
				[5] = 0,
				[6] = "PurpleMode"
			}
		}
		game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "80"
		plr.Humanoid.JumpPower = 40
		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(knifecolord))
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://5776249806"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://5776251749"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://6154047231"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4689506806"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4689505222"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4689531984"

	elseif _G.Mode == "Hate" then
        local A_1 =  {
            [1] = pass,
            [2] = "Chatted",
            [3] = " Hate *",
            [4] = Color3.new(1,0,0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.Events
        Event:FireServer(A_1)
		SongChange("Chara_Hate")
		ReAnimate(5869935888,4196634355,4196684102,3203734026)

		_G.MaterialInfo = {
			Parent = game.workspace,
			Name = 'COLORWOO',
			Material = Enum.Material.Neon,
			Color = Color3.fromRGB(0, 0, 0),
			Transparency = 0
		}
		_G.txx = Color3.fromRGB(0, 0, 0)
		game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = _G.txx
		local knifecolord = {
			[1] = {
				[1] = pass,
				[2] = "KnifeColor",
				[3] = "ChangeColor",
				[4] = Color3.fromRGB(0,0,0),
				[5] = 0,
				[6] = "Hate"
			}
		}
		local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://3752886447"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(0.6)
		local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://5869935888"
        local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(0.6)

		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(knifecolord))
		game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "60"
		plr.Humanoid.JumpPower = 30
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://6154047231"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://5776251749"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://6154047231"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4906030889"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://4906045655"
		game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://6154060166"
		CAS:BindActionAtPriority(
			"Hate1",
			Hate1,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.One
		)
		CAS:BindActionAtPriority(
			"Hate2",
			Hate2,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.Two
		)
	else print("INVALID MODE: ".._G.Mode)
	end
end

-- Connect the key press event

plr.Humanoid.JumpPower = 40
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "50"
_G.Mode = "Determination"
ReAnimate(3786720640,2,2,2)
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light1.AnimationId = "rbxassetid://4689497544"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light2.AnimationId = "rbxassetid://4348287123"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light3.AnimationId = "rbxassetid://4689503513"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light4.AnimationId = "rbxassetid://4689494450"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light5.AnimationId = "rbxassetid://5973923761"
game:GetService("Players").LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.BladesCombat.Light6.AnimationId = "rbxassetid://4348788816"
local knifecolord = {
	[1] = {
		[1] = pass,
		[2] = "KnifeColor",
		[3] = "ChangeColor",
		[4] = Color3.fromRGB(255, 10, 10) --[[Color3]],
		[5] = 0,
		[6] = "RedMode"
	}
}
game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(knifecolord))
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "120"



function Unfling()
	plr.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
	plr.HumanoidRootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
	plr:SetPrimaryPartCFrame(CFrame.new(834, 350, 189))
end
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
	if input.KeyCode == Enum.KeyCode.Zero and not processed then
		Unfling()
	end
end)

local UndoCol = {
	[1] = pass,
	[2] = "KnifeColor",
	[3] = "Reverse"
}

local TransformSound = {
	[1] = pass,
	[2] = "PlaySound",
	[3] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.SpecialHell2.Fire,
	[4] = game.Workspace
}
local PreTransformSound = {
	[1] = pass,
	[2] = "PlaySound",
	[3] = game:GetService("ReplicatedStorage").Resources.Sounds.Moves.PatienceAttack.Charge,
	[4] = game.Workspace
}

game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
	if input.KeyCode == Enum.KeyCode.X and not processed then
		game:GetService("TweenService"):Create(game.Workspace.MainSong, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), { Volume = 0 }):Play()
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4057815259"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)

		wait(0)
		game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(PreTransformSound)
		k:Play()
		k:AdjustSpeed(1)

		game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(UndoCol)
		wait(0.4)
		check()
		game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(TransformSound)

	end
end)
detect = game.Players.LocalPlayer.Character.Attacks.ChildAdded:Connect(function(pp)
	if pp.Name == "Removing" or "KnifeSlashProjectile" or "KnifeSlashProjectileDark" or "KnifeSlashProjectileYellow" or "KnifeSlashProjectilePurple" then
		local tt = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
		pp.CFrame = tt.Torso.CFrame
	end
end)
spawn(function()
end)

local numbb = {
	"1",
	"3",
	"4",
	"5",
	"2",
}

local currentIndex = 1

local function Constant()
	local ohTable1 = {
		[1] = pass,
		[2] = "SlashEffect",
		[3] = game:GetService('Players').LocalPlayer.Backpack.Main.CharaMoves.ModuleScript.Animations.Slash["Swing" .. numbb[currentIndex]],
		[4] = _G.txx,
	}

	game:GetService("ReplicatedStorage").Remotes.Events:FireServer(ohTable1)

	currentIndex = currentIndex + 1
	if currentIndex > #numbb then
		currentIndex = 1
	end
end
spawn(function()

	while wait(0.5) do
		Constant()
	end
end)
workspace:SetAttribute("RbxLegacyAnimationBlending", true)
local an = Instance.new("Animation");an.AnimationId = "rbxassetid://11107957893"
local a = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(an)

local an2 = Instance.new("Animation");an2.AnimationId = "rbxassetid://11393241248"
local a2 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(an2)

local an3 = Instance.new("Animation");an3.AnimationId = "rbxassetid://11299038208"
local a3 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(an3)
_G.Mode = "Determination"
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = "50"
CAS:BindActionAtPriority(
			"DTArea",
			DTArea,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.Three
		)
		CAS:BindActionAtPriority(
			"JusticeBlast",
			JusticeBlast,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.One
		)
		CAS:BindActionAtPriority(
			"DTSlashes",
			DTSlashes,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.Two
		)
		CAS:BindActionAtPriority(
			"DTSlash4",
			DTSlash4,
			false,
			Enum.ContextActionPriority.Low.Value,
			Enum.KeyCode.Four
		)
task.spawn(function()
	while task.wait() do
		for i, track in pairs(game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):GetPlayingAnimationTracks()) do
			if "rbxassetid://4064062039" == track.Animation.AnimationId then
				track:Stop()
				a:Play()
				a:Play()
				a.TimePosition = 0.5
			elseif "rbxassetid://3780057422" == track.Animation.AnimationId then
				track:Stop()
				a2:Play()
			elseif "rbxassetid://4062755689" == track.Animation.AnimationId or "rbxassetid://4063930148" == track.Animation.AnimationId then
				track:Stop()
				a3:Play()
			end
		end
	end
end)


local args = {
	[1] = {
		[1] = pass,
		[2] = "ChangeSetting",
		[3] = "CameraShake",
		[4] = true
	}
}

game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))
local args = {
	[1] = {
		[1] = pass,
		[2] = "ChangeSetting",
		[3] = "DeathScene",
		[4] = true
	}
}

game:GetService("ReplicatedStorage").Remotes.Functions:InvokeServer(unpack(args))




landed = false 



-- Fall thingy

local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid.StateChanged:Connect(function(oldState, newState)
	if newState == Enum.HumanoidStateType.Jumping then
		if not landed then
			landed = true
			return
		end
	elseif newState == Enum.HumanoidStateType.Landed and landed then
		landed = false


	end
end)





local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
	if k == " " and landed == false then
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState(3)
	end
end)
local CameraShaker = require(game.ReplicatedStorage.ClientModules.CameraShaker)

local camera = game.Workspace.CurrentCamera

local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
	camera.CFrame = camera.CFrame * shakeCf
end)

camShake:Start()
local humanoid = game.Players.LocalPlayer.Character.Humanoid
landed = false 
humanoid.StateChanged:Connect(function(oldState, newState)
	if newState == Enum.HumanoidStateType.Jumping then
		if not landed then
			landed = true
			return
		end
	elseif newState == Enum.HumanoidStateType.Landed and landed then
		landed = false
		camShake:Shake(CameraShaker.Presets.Explosion)
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://4575983939"
		local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		track:Play();
		track:AdjustSpeed();
		for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do v:Fire({"Model", "HighJump2", game.Players.LocalPlayer.Character["HumanoidRootPart"].CFrame * CFrame.new(0,0,0)}) end
		player = game.Players.LocalPlayer
		char = player.Character
		for _,v in pairs(game.ReplicatedStorage.Effects:GetChildren()) do
			if v.Name == 'HardLandSmoke' then
				clone99 = v:Clone()
				clone99.Parent = char.HumanoidRootPart
				clone99.CFrame = char.HumanoidRootPart.CFrame
				clone99.Anchored = false
				clone99.Name = 'DarkSmoke'
				clone99.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3,0)
				k:Play()
				wait(3)
				clone99:Destroy()
			end
		end
		while wait(3) do
		end
	end
end)
game:GetService("Players").LocalPlayer.PlayerGui.UI.Ui.ManaBar.Bar.BackgroundColor3 = _G.txx
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
