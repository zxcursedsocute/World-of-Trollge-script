local UserInputService = game:GetService("UserInputService")

if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/zxcursedsocute/World-of-Trollge-scriptMobile/main/lua"))();
elseif not UserInputService.TouchEnabled and UserInputService.KeyboardEnabled and UserInputService.MouseEnabled then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/zxcursedsocute/World-of-Trollge-scriptPC/main/lua"))();
end;
