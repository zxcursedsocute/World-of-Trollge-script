getgenv().ItemAutoFarm = false
getgenv().OnlyEastersEgg = false
getgenv().AutoOpenEgg = false
getgenv().ESP1 = false
getgenv().AutoPick = false
getgenv().AutoCraft = false
getgenv().AutoCraftEmpy = false
getgenv().AutoCraftBlood = false
getgenv().AutoCrafMysterious = false
getgenv().AutoCraftSorrow = false
getgenv().AutoCraftNights = false
getgenv().AutoCraftFlaming = false
getgenv().AutoCraftOrb = false
getgenv().AutoDeleteEmp = false
getgenv().AutoDeleteWater = false
getgenv().AutoDeleteHeart = false
getgenv().AutoDeleteOil = false
getgenv().AutoDeleteBlood = false
getgenv().AutoDeleteMysterious = false
getgenv().AutoDeleteSorrow = false
getgenv().AutoDeleteNights = false

pcall(function()
    for i,v in pairs (game:GetService("Workspace")["The J"].Forging:GetDescendants()) do
        if v.Name == "ProximityPrompt" and v.Parent and v.Parent.Name == "Part" and v.Parent.Parent.Name == "anvil" then
            v.Parent.Name = "Partb"
            v.Parent.Parent.Name = "anvilb"
            break
        end
    end
end)

pcall(function()
    for i,v in pairs (game:GetService("Workspace")["The J"].Forging:GetDescendants()) do
        if v.Name == "ProximityPrompt" and v.Parent and v.Parent.Name == "Part" and v.Parent.Parent.Name == "anvil" then
            v.Parent.Name = "Partm"
            v.Parent.Parent.Name = "anvilm"
            break
        end
    end
end)

pcall(function()
    for i,v in pairs (game:GetService("Workspace")["The J"].Forging:GetDescendants()) do
        if v.Name == "ProximityPrompt" and v.Parent and v.Parent.Name == "Part" and v.Parent.Parent.Name == "anvil" then
            v.Parent.Name = "Parts"
            v.Parent.Parent.Name = "anvils"
            break
        end
    end
end)

pcall(function()
    for i,v in pairs (game:GetService("Workspace")["The J"]:GetDescendants()) do
        if v.Name == "ProximityPrompt" and v.Parent and v.Parent.Name == "Part" and v.Parent.Parent.Name == "anvil" then
            v.Parent.Name = "Partf"
            v.Parent.Parent.Name = "anvilf"
            break
        end
    end
end)

pcall(function()
    for i,v in pairs (game:GetService("Workspace")["The J"]:GetDescendants()) do
        if v.Name == "ProximityPrompt" and v.Parent and v.Parent.Name == "Part" and v.Parent.Parent.Name == "anvil" then
            v.Parent.Name = "Partn"
            v.Parent.Parent.Name = "anviln"
            break
        end
    end
end)

pcall(function()
    for i,v in pairs (game:GetService("Workspace")["The J"].OrbCrafter:GetDescendants()) do
        if v.Name == "ProximityPrompt" and v.Parent and v.Parent.Name == "Part" and v.Parent.Parent.Name == "OrbCrafter" then
            v.Parent.Name = "Parto"
            break
        end
    end
end)

local Part = Instance.new("Part")
Part.Parent = game.Workspace
Part.Name = "Safe area"
Part.Anchored = true
Part.Size = Vector3.new(100, 20 , 100)
Part.Position = Vector3.new(0 , -500, 0)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("World of Trollge GUI", "DarkTheme")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Auto Farm")

Section:NewToggle("Auto Farm Items", "teleport to items and collect them", function(state)
    getgenv().ItemAutoFarm = state
    if state then
        itemautofarm();    
    end
end)

function itemautofarm()
    spawn(function()
        while wait() do
            if not ItemAutoFarm then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Safe area"].CFrame break end
            if not ItemAutoFarm then break end
            pcall(function()
                for i,v in pairs (game.Workspace:GetDescendants()) do
                    if v.Name == "ProximityPrompt" and v.Parent and v.Parent.Parent.ClassName == "Tool" and v.Parent.Parent.CanBeDropped == false and v.Parent.Parent.Parent.ClassName == "Workspace" or v.Name == "ProximityPrompt" and v.Parent and v.Parent.Parent.Name == "Egg" and v.Parent.Parent.ClassName == "Tool" and v.Parent.Parent.CanBeDropped == true and v.Parent.Parent.Parent.ClassName == "Workspace" then
                        if not ItemAutoFarm then break end
                        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame + Vector3.new(0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
                        fireproximityprompt(v.Parent.ProximityPrompt)
                        fireproximityprompt(v.Parent.ProximityPrompt)   
                        wait(0.15) 
                        fireproximityprompt(v.Parent.ProximityPrompt)
                        wait(0.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.0573774539, -487.000092, -0.0554556288, 0.999999642, 5.61983491e-08, -0.000878473278, -5.62076039e-08, 1, -1.05132543e-08, 0.000878473278, 1.05626272e-08, 0.999999642)
                        wait(0.1)
                    end
                end
            end 
        )end
    end)        
end

Section:NewToggle("Easter Eggs Only", "teleport to Easters Egg and collect them", function(state)
    getgenv().OnlyEastersEgg= state
    if state then
        onlyeastersegg();    
    end
end)

function onlyeastersegg()
    spawn(function()
        while wait() do
            if not OnlyEastersEgg then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Safe area"].CFrame break end
            if not OnlyEastersEgg then break end
            pcall(function()
                for i,v in pairs (game.Workspace:GetDescendants()) do
                    if v.Name == "ProximityPrompt" and v.Parent and v.Parent.Parent.Name == "Egg" and v.Parent.Parent.ClassName == "Tool" and v.Parent.Parent.CanBeDropped == true and v.Parent.Parent.Parent.ClassName == "Workspace" then
                        if not OnlyEastersEgg then break end
                        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame + Vector3.new(0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
                        fireproximityprompt(v.Parent.ProximityPrompt)
                        fireproximityprompt(v.Parent.ProximityPrompt)   
                        wait(0.15) 
                        fireproximityprompt(v.Parent.ProximityPrompt)
                        wait(0.15)
                        else
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.0573774539, -487.000092, -0.0554556288, 0.999999642, 5.61983491e-08, -0.000878473278, -5.62076039e-08, 1, -1.05132543e-08, 0.000878473278, 1.05626272e-08, 0.999999642)
                    end
                end
            end 
        )end
    end)        
end

Section:NewToggle("Auto Eggs Opening", "auto eggs opening", function(state)
    getgenv().AutoOpenEgg = state
    if state then
        autoopenegg();    
    end
end)

function autoopenegg()
    spawn(function()
        while wait() do
            if not AutoOpenEgg then break end
            pcall(function()
                for i,v in pairs (game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    if v.Name == "Egg" then
                        v.Parent = game.Players.LocalPlayer.Character
                        wait(0.05)
                        game.Players.LocalPlayer.Character.Egg:Activate()
                        wait(0.05)
                        if not AutoOpenEgg then break end
                    end
                end
            end)
        end
    end)
end

local Section = Tab:NewSection("Esp")

Section:NewToggle("Items Esp", "shows the location of items", function(state)
    getgenv().ESP1 = state
    if state then
        ESP();    
    end
end)

function ESP()
    spawn(function()
    while wait(2) do
        if not ESP1 then break end
        for i, v in pairs (game.Workspace:GetDescendants()) do
            if v.Name == "ProximityPrompt" and v.Parent and v.Parent.Parent.ClassName == "Tool" and v.Parent.Parent.Name and v.Parent.Parent.CanBeDropped == false and v.Parent.Parent.Parent.ClassName == "Workspace" or v.Name == "ProximityPrompt" and v.Parent and v.Parent.Parent.Name == "Egg" and v.Parent.Parent.ClassName == "Tool" and v.Parent.Parent.CanBeDropped == true and v.Parent.Parent.Parent.ClassName == "Workspace" then
                if not ESP1 then break end
                if not v.Parent.Parent:FindFirstChild("ESP") then
                  local BillboardGui = Instance.new("BillboardGui")
                  local TextLabel = Instance.new("TextLabel")
                  local Highlight = Instance.new("Highlight")
                   
                BillboardGui.Parent = v.Parent.Parent
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1.000
                BillboardGui.Size = UDim2.new(25, 0, 25, 0)
                BillboardGui.Name = "ESP"
                 
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.Size = UDim2.new(1, 2, 1, 1)
                TextLabel.Font = Enum.Font.SourceSans
                TextLabel.Text = v.Parent.Parent.Name
                TextLabel.TextColor3 = Color3.fromRGB(0, 159, 58)
                TextLabel.TextScaled = true
                TextLabel.TextSize = 14.000
                TextLabel.TextWrapped = true
                
                Highlight.Archivable = true
                Highlight.Adornee = v.Parent.Parent
                Highlight.Parent = v.Parent.Parent
                Highlight.Name = "ESPHighlight"
                Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                Highlight.Enabled = true
                Highlight.FillColor = Color3.new(0, 255, 0)
                Highlight.FillTransparency = 0.5
                Highlight.OutlineColor = Color3.new(255,255,255)
                Highlight.OutlineTransparency = 0
                wait(0.3)
                end
                end
            end
        end
     end)
end

local Section = Tab:NewSection("Auto Pick")

Section:NewToggle("Auto Pick Items", "automatically collects items", function(state)
    getgenv().AutoPick = state
    if state then
        autopick();    
    end
end)

function autopick()
    while wait() do
        if not AutoPick then break end
        for i,v in pairs (game.Workspace:GetDescendants()) do
            if v.Name == "ProximityPrompt" and v.Parent and v.Parent.Parent.ClassName == "Tool" then
                fireproximityprompt(v.Parent.ProximityPrompt)
                if not AutoPick then break end
                wait(0.1)
            end
        end 
    end
end

local Section = Tab:NewSection("Auto Craft")

Section:NewToggle("Auto Craft Items", "automatically craft items", function(state)
    getgenv().AutoCraft = state
    if state then
        autocraft();    
    end
end)

function autocraft()
    while wait() do
        if not AutoCraft then break end
        for i,v in pairs(game:GetService("Workspace")["The J"]:GetDescendants()) do
            if v.Name == "ProximityPrompt" and v.Parent then
                fireproximityprompt(v.Parent.ProximityPrompt)
                if not AutoCraft then break end
                wait(0.1)
            end
        end
    end
end

local Tab = Window:NewTab("Items")

local Section = Tab:NewSection("Auto Craft")

Section:NewToggle("Empty Cup", "ToggleInfo", function(state)
    getgenv().AutoCraftEmpy = state
    if state then
        autocraftempy();    
    end
end)

function autocraftempy()
    spawn(function()
        while wait() do
            if not AutoCraftEmpy then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Safe area"].CFrame break end
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-221.106384, 6.27479219, -225.913025, 1, 0, 0, 0, 1, 0, 0, 0, 1)          
            fireproximityprompt(game:GetService("Workspace")["The J"]["The hole"].Part.ProximityPrompt)
            if not AutoCraftEmpy then break end
        end
    end)
end

Section:NewToggle("Blood", "ToggleInfo", function(state)
    getgenv().AutoCraftBlood = state
    if state then
        autocraftblood();    
    end
end)

function autocraftblood()
    spawn(function()
        while wait() do
            if not AutoCraftBlood then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Safe area"].CFrame break end
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["The J"].Forging.anvilb.Partb.CFrame
            fireproximityprompt(game:GetService("Workspace")["The J"].Forging.anvilb.Partb.ProximityPrompt)
            if not AutoCraftBlood then break end
        end
    end)
end

Section:NewToggle("Mysterious", "ToggleInfo", function(state)
    getgenv().AutoCrafMysterious = state
    if state then
        autocrafmysterious();    
    end
end)

function autocrafmysterious()
    spawn(function()
        while wait() do
            if not AutoCrafMysterious then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Safe area"].CFrame break end
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["The J"].Forging.anvilm.Partm.CFrame           
            fireproximityprompt(game:GetService("Workspace")["The J"].Forging.anvilm.Partm.ProximityPrompt)
            if not AutoCrafMysterious then break end
        end
    end)
end

Section:NewToggle("Sorrow", "ToggleInfo", function(state)
    getgenv().AutoCraftSorrow = state
    if state then
        autocraftsorrow();    
    end
end)

function autocraftsorrow()
    spawn(function()
        while wait() do
            if not AutoCraftSorrow then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Safe area"].CFrame break end
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["The J"].Forging.anvils.Parts.CFrame          
            fireproximityprompt(game:GetService("Workspace")["The J"].Forging.anvils.Parts.ProximityPrompt)
            if not AutoCraftSorrow then break end
        end
    end)
end

Section:NewToggle("Nights Essence", "ToggleInfo", function(state)
    getgenv().AutoCraftNights = state
    if state then
        autocraftnights();    
    end
end)

function autocraftnights()
    spawn(function()
        while wait() do
            if not AutoCraftNights then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Safe area"].CFrame break end      
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["The J"].anviln.Partn.CFrame      
            fireproximityprompt(game:GetService("Workspace")["The J"].anviln.Partn.ProximityPrompt)
            if not AutoCraftNights then break end
        end
    end)
end

Section:NewToggle("Flaming", "ToggleInfo", function(state)
    getgenv().AutoCraftFlaming = state
    if state then
        autocraftflaming();    
    end
end)

function autocraftflaming()
    spawn(function()
        while wait() do
            if not AutoCraftFlaming then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Safe area"].CFrame break end   
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["The J"].anvilf.Partf.CFrame         
            fireproximityprompt(game:GetService("Workspace")["The J"].anvilf.Partf.ProximityPrompt)
            if not AutoCraftFlaming then break end
        end
    end)
end

Section:NewToggle("Dark Orb", "ToggleInfo", function(state)
    getgenv().AutoCraftOrb = state
    if state then
        autovraftorb();    
    end
end)

function autovraftorb()
    spawn(function()
        while wait() do
            if not AutoCraftOrb then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Safe area"].CFrame break end   
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["The J"].OrbCrafter.Parto.CFrame         
            fireproximityprompt(game:GetService("Workspace")["The J"].OrbCrafter.Parto.ProximityPrompt)
            if not AutoCraftOrb then break end
        end
    end)
end

local Section = Tab:NewSection("Auto Delete")

Section:NewToggle("Empty Cup", "ToggleInfo", function(state)
    getgenv().AutoDeleteEmp = state
    if state then
        autodeleteemp();    
    end
end)

function autodeleteemp()
    while wait() do
        if not AutoDeleteEmp then break end
        pcall(function()
            for i,v in pairs (game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "empty cup" then
                    v:Destroy()
                    if not AutoDeleteEmp then break end
                end
            end
        end)
    end
end

Section:NewToggle("Blood", "ToggleInfo", function(state)
    getgenv().AutoDeleteOil = state
    if state then
        autodeleteblood();    
    end
end)

function autodeleteoil()
    while wait() do
        if not AutoDeleteOil then break end
        pcall(function()
            for i,v in pairs (game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "oil" then
                    v:Destroy()
                    if not AutoDeleteOil then break end
                end
            end
        end)
    end
end

Section:NewToggle("Water Cup", "ToggleInfo", function(state)
    getgenv().AutoDeleteWater = state
    if state then
        autodeletewater();    
    end
end)

function autodeletewater()
    while wait() do
        if not AutoDeleteWater then break end
        pcall(function()
            for i,v in pairs (game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "water cup" then
                    v:Destroy()
                    if not AutoDeleteWater then break end
                end
            end
        end)
    end
end

Section:NewToggle("Hearty Cup", "ToggleInfo", function(state)
    getgenv().AutoDeleteHeart = state
    if state then
        autodeleteheart();    
    end
end)

function autodeleteheart()
    while wait() do
        if not AutoDeleteHeart then break end
        pcall(function()
            for i,v in pairs (game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "hearty cup" then
                    v:Destroy()
                    if not AutoDeleteHeart then break end
                end
            end
        end)
    end
end

Section:NewToggle("Blood", "ToggleInfo", function(state)
    getgenv().AutoDeleteBlood = state
    if state then
        autodeleteblood();    
    end
end)

function autodeleteblood()
    while wait() do
        if not AutoDeleteBlood then break end
        pcall(function()
            for i,v in pairs (game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "blood" then
                    v:Destroy()
                    if not AutoDeleteBlood then break end
                end
            end
        end)
    end
end

Section:NewToggle("Mysterious", "ToggleInfo", function(state)
    getgenv().AutoDeleteMysterious = state
    if state then
        autodeletemysterious();    
    end
end)

function autodeletemysterious()
    while wait() do
        if not AutoDeleteMysterious then break end
        pcall(function()
            for i,v in pairs (game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "mysterious cup" then
                    v:Destroy()
                    if not AutoDeleteMysterious then break end
                end
            end
        end)
    end
end

Section:NewToggle("Sorrow", "ToggleInfo", function(state)
    getgenv().AutoDeleteSorrow = state
    if state then
        autodeletesorrow();    
    end
end)

function autodeletesorrow()
    while wait() do
        if not AutoDeleteSorrow then break end
        pcall(function()
            for i,v in pairs (game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "sorrow" then
                    v:Destroy()
                    if not AutoDeleteSorrow then break end
                end
            end
        end)
    end
end

Section:NewToggle("Nights Essence", "ToggleInfo", function(state)
    getgenv().AutoDeleteNights = state
    if state then
        autodeletenights();    
    end
end)

function autodeletenights()
    while wait() do
        if not AutoDeleteNights then break end
        pcall(function()
            for i,v in pairs (game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "nights essence" then
                    v:Destroy()
                    if not AutoDeleteNights then break end
                end
            end
        end)
    end
end

local Tab = Window:NewTab("Teleport")

local Section = Tab:NewSection("Teleport")

Section:NewButton("Safe Place", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Safe area"].CFrame
 end)
Section:NewButton("Spawn", "ButtonInfo", function()
    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-272.199982, 5.73468924, 27.1499939, -1, 0, 0, 0, 1, 0, 0, 0, -1)
 end)
Section:NewButton("Trading center", "ButtonInfo", function()
   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6222.96289, 76.9761658, 497.236115, 0.0128163062, 1.06511315e-07, 0.999917865, -4.24694981e-08, 1, -1.05975715e-07, -0.999917865, -4.11077927e-08, 0.0128163062)
end)
Section:NewButton("Heart Cup", "ButtonInfo", function()
   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5182.16846, 33.5676689, 51.2995033, 0.286979884, -4.15439345e-08, -0.957936585, -3.68790225e-08, 1, -5.44164109e-08, 0.957936585, 5.09441804e-08, 0.286979884)
end)
Section:NewButton("Water Cup", "ButtonInfo", function()
   game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5099.24512, 30.3674545, 30.0306778, -0.410934329, -7.48649427e-08, 0.911664963, -4.94567587e-08, 1, 5.98262133e-08, -0.911664963, -2.05033501e-08, -0.410934329)
end)
Section:NewButton("Super Cup", "ButtonInfo", function()
    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5126.354, 48.5339813, -15.5235538, 0.100770503, 1.45054129e-08, -0.994909704, 1.27640467e-08, 1, 1.58724482e-08, 0.994909704, -1.42985481e-08, 0.100770503)
 end)
 Section:NewButton("Mechanical Cup", "ButtonInfo", function()
    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4920.48193, 168.067398, 37.6711235, -0.015548151, -4.38023378e-08, -0.999879122, 6.6791948e-08, 1, -4.48462494e-08, 0.999879122, -6.7481146e-08, -0.015548151)
 end)

local Tab = Window:NewTab("Local Player")

local Section = Tab:NewSection("Anti Afk")

Section:NewButton("Anti Afk", "ButtonInfo", function()
    bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
    end)
end)

--local Section = Tab:NewSection("Delete Trees")

--Section:NewButton("Delete Trees", "ButtonInfo", function()
 --   game:GetService("Workspace")["The J"].Trees:Destroy()
 --end)

 local Section = Tab:NewSection("SpeedHack")

Section:NewSlider("WalkSpeed", "SliderInfo", 100, 0, function(W)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = W
end)

local Section = Tab:NewSection("JumpHack")

Section:NewSlider("JumpPower", "SliderInfo", 100, 0, function(J)
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = J
end)

local Section = Tab:NewSection("InfJump")

Section:NewToggle("InfJump", "ToggleInfo", function(state)
        getgenv().Infjump = state
        if state then
           Jump();
    end
end)

function Jump()
    while wait() do
      if not Infjump then break end
      game:GetService("UserInputService").JumpRequest:connect(function()
      if Infjump then 
      game:GetService"Players".LocalPlayer.Character:findFirstChildOfClass"Humanoid":ChangeState("Jumping")
            end
        end
   )end
end

local Section = Tab:NewSection("ServerHop")

Section:NewButton("ServerHop", "ButtonInfo", function()
    local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			x[#x + 1] = v.id
		end
	end
	if #x > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
    end  
 end)

 local Section = Tab:NewSection("Rejoin")

Section:NewButton("Rejoin", "ButtonInfo", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId)   
 end)


local Tab = Window:NewTab("Setting")

local Section = Tab:NewSection("Close/Open GUI")

Section:NewKeybind("Keybind", "KeybindInfo", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)
