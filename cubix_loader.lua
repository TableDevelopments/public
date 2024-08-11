
	--        _                   _                                  
	--	     / \    _ __   _ __  | |  ___ __      __ __ _  _ __  ___ 
	--	    / _ \  | '_ \ | '_ \ | | / _ \\ \ /\ / // _` || '__|/ _ \
	--     / ___ \ | |_) || |_) || ||  __/ \ V  V /| (_| || |  |  __/
	--	  /_/   \_\| .__/ | .__/ |_| \___|  \_/\_/  \__,_||_|   \___|
	--             |_|    |_|                                        
	--

	-- leo ur a fuckin skid bozo xd
	-- also you're going to see shit thats incomplete so obviously theres going to be that.
	-- lmk when your shit releases. lmk when you learn arm64 architecture in 3 months. skida boy

	-- // GUI > LUAU \\ --
	-- // VERSION: 0.7 \\ --

	-- // SCRIPT ID: {01a6a385-dfe4-4f21-b813-e579bc0354f4} \\ --


	-- // INSTANCES \\ --
	
--	if not isfolder("AW_AutoExecute") then 
--	    makefolder("AW_AutoExecute")
--	end
	
	--if not isfolder("AW_Settings") then 
	    --makefolder("AW_Settings")
	--end 

	local tweenService = game:GetService("TweenService")

	local MAIN_KEY = Instance.new("ScreenGui")
	local main = Instance.new("ScreenGui")
	local KeyMenu = Instance.new("Frame")
	local appleware = Instance.new("TextLabel")
	local keysystem = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")
	local close = Instance.new("TextButton")
	local minimize = Instance.new("TextButton")
	local loginkey = Instance.new("TextButton")
	local Login = Instance.new("TextLabel")
	local Key = Instance.new("ImageLabel")
	local UIGradient_2 = Instance.new("UIGradient")
	local UICorner_3 = Instance.new("UICorner")
	local Loading = Instance.new("ImageLabel")
	local actkey = Instance.new("TextButton")
	local ActLabel = Instance.new("TextLabel")
	local acticon = Instance.new("ImageLabel")
	local UICorner_4 = Instance.new("UICorner")
	local MainKeyCorner = Instance.new("UICorner")
	local support = Instance.new("TextButton")
	local discordLogo = Instance.new("ImageLabel")
	local UIStroke_3 = Instance.new("UIStroke")
	local UICorner_5 = Instance.new("UICorner")
	local keyIndicator = Instance.new("TextLabel")
	local userkey = Instance.new("TextLabel")
	local UIGradient_3 = Instance.new("UIGradient")
	local Copy = Instance.new("ImageButton")
	local promocode = Instance.new("TextButton")
	local gifticon = Instance.new("ImageLabel")
	local promo_stroke = Instance.new("UIStroke")
	local promo_corner = Instance.new("UICorner")
	local codebox = Instance.new("TextBox")
	local code_corner = Instance.new("UICorner")
	local code_stroke = Instance.new("UIStroke")
	local hidden = false

	local AW = {
		fadeIn = function(obj, dur)
			dur = dur or 0.2
			if obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
				tweenService:Create(obj, TweenInfo.new(dur, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					ImageTransparency = 0
				}):Play()

			elseif obj:IsA("TextLabel") then 
				tweenService:Create(obj, TweenInfo.new(dur, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					TextTransparency = 0 
				}):Play()

			elseif obj:IsA("TextButton") then 
				if obj.Name == "minimize" or obj.Name == "close" or obj.Name == "pclose" then tweenService:Create(obj, TweenInfo.new(dur, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play() else
					tweenService:Create(obj, TweenInfo.new(dur, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						BackgroundTransparency = 0
					}):Play()
				end
			elseif obj:IsA("TextBox") then
				obj.Visible = true 
				tweenService:Create(obj, TweenInfo.new(dur, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					BackgroundTransparency = 0,
					TextTransparency = 0 
				}):Play()

			elseif obj:IsA("UIStroke") then 
				tweenService:Create(obj, TweenInfo.new(dur, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					Thickness = 1 
				}):Play()  

			elseif obj:IsA("Frame") then 
				tweenService:Create(obj, TweenInfo.new(dur, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					BackgroundTransparency = 0
				}):Play()
			end  
		end,
		fadeOut = function(obj, dur)
			dur = dur or 0.2
			if obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
				tweenService:Create(obj, TweenInfo.new(dur, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					ImageTransparency = 1
				}):Play()

			elseif obj:IsA("TextLabel") then 
				tweenService:Create(obj, TweenInfo.new(dur, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					TextTransparency = 1 
				}):Play()

			elseif obj:IsA("TextButton") then 
				if obj.Name == "minimize" or obj.Name == "close" or obj.Name == "pclose" then tweenService:Create(obj, TweenInfo.new(dur, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 1}):Play() else
					tweenService:Create(obj, TweenInfo.new(dur, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						BackgroundTransparency = 1
					}):Play()
				end
			elseif obj:IsA("TextBox") then
				obj.Visible = true 
				tweenService:Create(obj, TweenInfo.new(dur, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					BackgroundTransparency = 1,
					TextTransparency = 1
				}):Play()

			elseif obj:IsA("UIStroke") then 
				tweenService:Create(obj, TweenInfo.new(dur, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					Thickness = 0
				}):Play()  

			elseif obj:IsA("Frame") then 
				tweenService:Create(obj, TweenInfo.new(dur, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					BackgroundTransparency = 1
				}):Play()
			end  
		end
	} 

	local utils = { 
		popup = function(msg: string, dur: number)
		    dur = dur or 5
		
			local ppnotif = Instance.new("Frame")
			local smallIcon = Instance.new("ImageLabel")
			local infoslabel = Instance.new("TextLabel")
			local NTFS = Instance.new("UIStroke")
			local NTFC = Instance.new("UICorner")
			local pclose = Instance.new("TextButton")
			local PCC = Instance.new("UICorner")

			ppnotif.Name = "ppnotif"
			ppnotif.Parent = main
			ppnotif.AnchorPoint = Vector2.new(0.5, 0.5)
			ppnotif.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			ppnotif.BackgroundTransparency = 1
			ppnotif.BorderSizePixel = 0
			ppnotif.Position = UDim2.new(0.5, 0, 0.699999988, 20)
			ppnotif.Size = UDim2.new(0, 457, 0, 25)
			ppnotif.Visible = true
			ppnotif.BackgroundTransparency = 1

			smallIcon.Name = "smallIcon"
			smallIcon.Parent = ppnotif
			smallIcon.BackgroundTransparency = 1.000
			smallIcon.BorderSizePixel = 0
			smallIcon.Position = UDim2.new(0, 10, 0, 0)
			smallIcon.Size = UDim2.new(0, 15, 0, 24)
			smallIcon.Image = "http://www.roblox.com/asset/?id=17789721967"
			smallIcon.ImageTransparency = 1
			smallIcon.ScaleType = Enum.ScaleType.Fit

			infoslabel.Name = "infoslabel"
			infoslabel.Parent = ppnotif
			infoslabel.BackgroundTransparency = 1.000
			infoslabel.BorderSizePixel = 0
			infoslabel.Position = UDim2.new(0, 35, 0, 7)
			infoslabel.Size = UDim2.new(0, 73, 0, 11)
			infoslabel.FontFace = Font.new("rbxassetid://11702779409", Enum.FontWeight.Medium, Enum.FontStyle.Normal) 
			infoslabel.Text = msg
			infoslabel.TextTransparency = 1
			infoslabel.TextColor3 = Color3.fromRGB(85, 85, 85)
			infoslabel.TextSize = 14
			infoslabel.TextXAlignment = Enum.TextXAlignment.Left

			NTFS.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			NTFS.Color = Color3.fromRGB(46, 46, 46)
			NTFS.Thickness = 0 --2
			NTFS.Name = "NTFS"
			NTFS.Parent = ppnotif

			NTFC.CornerRadius = UDim.new(0, 5)
			NTFC.Name = "NTFC"
			NTFC.Parent = ppnotif

			pclose.Name = "pclose"
			pclose.Parent = ppnotif
			pclose.BackgroundColor3 = Color3.fromRGB(79, 78, 80)
			pclose.BackgroundTransparency = 1.000
			pclose.BorderSizePixel = 0
			pclose.Position = UDim2.new(0, 430, 0, 5)
			pclose.Size = UDim2.new(0, 21, 0, 17)
			pclose.FontFace = Font.new("rbxassetid://11702779409", Enum.FontWeight.Medium, Enum.FontStyle.Normal) 
			pclose.Text = "×"
			pclose.TextTransparency = 1
			pclose.TextColor3 = Color3.fromRGB(255, 255, 255)
			pclose.TextSize = 20.000

			PCC.CornerRadius = UDim.new(0, 3)
			PCC.Name = "PCC"
			PCC.Parent = pclose

			task.spawn(function()
				for _,obj in pairs(ppnotif:GetDescendants()) do 
					AW.fadeIn(ppnotif, 0.2) 
					AW.fadeIn(obj, 0.2)
				end
			end)

			pclose.MouseButton1Click:Connect(function()
				task.spawn(function()
						AW.fadeOut(ppnotif, 0.2) 
						tweenService:Create(NTFS, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Thickness = 0}):Play() 
						tweenService:Create(infoslabel, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 1}):Play()
						tweenService:Create(pclose, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 1}):Play()
						tweenService:Create(smallIcon, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 1}):Play()
						task.wait(1)
						ppnotif:Destroy()
				end)
			end)
			
			task.wait(dur)
			   task.spawn(function()
			         if ppnotif and ppnotif.BackgroundTransparency == 0 then
		             AW.fadeOut(ppnotif, 0.2) 
		             tweenService:Create(NTFS, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Thickness = 0}):Play()  
		             tweenService:Create(infoslabel, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 1}):Play() 
		             tweenService:Create(pclose, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 1}):Play()
		             tweenService:Create(smallIcon, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 1}):Play()
		             task.wait(1)
		             ppnotif:Destroy()
		             end
			   end)  
		end
	}

	-- // PROPERTIES \\ --

	MAIN_KEY.Name = "MAIN_KEY"
	MAIN_KEY.Parent = gethui()
	MAIN_KEY.ResetOnSpawn = false
	MAIN_KEY.DisplayOrder = 99

	main.Name = "main"
	main.Parent = gethui()
	main.ResetOnSpawn = false 
	main.DisplayOrder = 99

	KeyMenu.Name = "KeyMenu"
	KeyMenu.Parent = MAIN_KEY
	KeyMenu.BackgroundTransparency = 1
	KeyMenu.AnchorPoint = Vector2.new(0.5, 0.5)
	KeyMenu.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
	KeyMenu.BorderSizePixel = 0
	KeyMenu.Position = UDim2.new(0.5, 0, 0.5, 0)
	KeyMenu.Size = UDim2.new(0, 460, 0, 145)
	KeyMenu.Visible = true
	KeyMenu.ClipsDescendants = true

	appleware.Name = "appleware"
	appleware.Parent = KeyMenu
	appleware.BackgroundTransparency = 1.000
	appleware.BorderSizePixel = 0
	appleware.Position = UDim2.new(0, 12, 0, 10)
	appleware.Size = UDim2.new(0, 127, 0, 16)
	appleware.FontFace = Font.new("rbxassetid://11702779409", Enum.FontWeight.Bold, Enum.FontStyle.Italic)  
	appleware.Text = "Cubix - IOS"
	appleware.TextColor3 = Color3.fromRGB(235, 235, 235)
	appleware.TextSize = 13.000
	appleware.TextTransparency = 1
	appleware.TextXAlignment = Enum.TextXAlignment.Left
	appleware.TextYAlignment = Enum.TextYAlignment.Top

	keysystem.Name = "keysystem"
	keysystem.Parent = KeyMenu
	keysystem.BackgroundTransparency = 1.000
	keysystem.BorderSizePixel = 0
	keysystem.Position = UDim2.new(0, 75, 0, 10)
	keysystem.Size = UDim2.new(0, 127, 0, 16)
	keysystem.FontFace = Font.new("rbxassetid://11702779409", Enum.FontWeight.Bold, Enum.FontStyle.Italic) 
	keysystem.Text = "| Key System Powered By AppleWare"
	keysystem.TextTransparency = 1
	keysystem.TextColor3 = Color3.fromRGB(255, 255, 255)
	keysystem.TextSize = 13.000
	keysystem.TextXAlignment = Enum.TextXAlignment.Left
	keysystem.TextYAlignment = Enum.TextYAlignment.Top

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(249, 0, 255)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(190, 6, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 6, 66))}
	UIGradient.Rotation = 357.22601318359375
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.50, 0.00), NumberSequenceKeypoint.new(1.00, 0.00)}
	UIGradient.Parent = keysystem

	close.Name = "close"
	close.Parent = KeyMenu
	close.BackgroundTransparency = 1.000
	close.BorderSizePixel = 0
	close.Position = UDim2.new(0, 431, 0, 8)
	close.Size = UDim2.new(0, 21, 0, 17)
	close.FontFace = Font.new("rbxassetid://11702779409", Enum.FontWeight.Medium, Enum.FontStyle.Normal) 
	close.Text = "×"
	close.TextTransparency = 1
	close.TextColor3 = Color3.fromRGB(255, 255, 255)
	close.TextSize = 20.000

	minimize.Name = "minimize"
	minimize.AutoButtonColor = false
	minimize.Parent = KeyMenu
	minimize.BackgroundTransparency = 1.000
	minimize.BorderSizePixel = 0
	minimize.Position = UDim2.new(0, 410, 0, 8)
	minimize.Size = UDim2.new(0, 21, 0, 17)
	minimize.FontFace = Font.new("rbxassetid://11702779409", Enum.FontWeight.Medium, Enum.FontStyle.Normal) 
	minimize.Text = "-"
	minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
	minimize.TextSize = 17.000
	minimize.TextTransparency = 1
	minimize.ZIndex = 2

	loginkey.Name = "login key"
	loginkey.Parent = KeyMenu
	loginkey.Active = false
	loginkey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	loginkey.BackgroundTransparency = 1
	loginkey.BorderSizePixel = 0
	loginkey.Position = UDim2.new(0, 107, 0, 45)
	loginkey.Selectable = false
	loginkey.Size = UDim2.new(0, 246, 0, 33)
	loginkey.AutoButtonColor = false
	loginkey.Text = ""

	Login.Name = "Login"
	Login.Parent = loginkey
	Login.TextTransparency = 1
	Login.BackgroundTransparency = 1.000
	Login.BorderSizePixel = 0
	Login.Position = UDim2.new(0, 106, 0, 8)
	Login.Size = UDim2.new(0, 57, 0, 18)
	Login.FontFace = Font.new("rbxassetid://11702779409", Enum.FontWeight.Medium, Enum.FontStyle.Normal) 
	Login.Text = "Check Authentication"
	Login.TextColor3 = Color3.fromRGB(255, 255, 255)
	Login.TextSize = 15.000

	Key.Name = "Key"
	Key.Parent = loginkey
	Key.BackgroundTransparency = 1.000
	Key.BorderSizePixel = 0
	Key.Position = UDim2.new(0, 13, 0, 5)
	Key.Size = UDim2.new(0, 23, 0, 23)
	Key.ImageTransparency = 1
	Key.Image = "http://www.roblox.com/asset/?id=17771979079"

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(206, 26, 37)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(211, 22, 112))}
	UIGradient_2.Rotation = 2.1700000762939453
	UIGradient_2.Parent = loginkey

	UICorner_3.CornerRadius = UDim.new(0, 5)
	UICorner_3.Parent = loginkey

	Loading.Name = "Loading"
	Loading.Parent = loginkey
	Loading.BackgroundTransparency = 1.000
	Loading.BorderSizePixel = 0
	Loading.Position = UDim2.new(0, 14, 0, 7)
	Loading.Size = UDim2.new(0, 20, 0, 20)
	Loading.Visible = false
	Loading.Image = "http://www.roblox.com/asset/?id=17789052135"
	Loading.ZIndex = 2

	actkey.Name = "actkey"
	actkey.Parent = KeyMenu
	actkey.Active = false
	actkey.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	actkey.BorderSizePixel = 0
	actkey.Position = UDim2.new(0, 107, 0, 85)
	actkey.Selectable = false
	actkey.Size = UDim2.new(0, 246, 0, 33)
	actkey.AutoButtonColor = false
	actkey.Text = ""
	actkey.BackgroundTransparency = 1

	ActLabel.Name = "ActLabel"
	ActLabel.TextTransparency = 1
	ActLabel.Parent = actkey
	ActLabel.BackgroundTransparency = 1.000
	ActLabel.BorderSizePixel = 0
	ActLabel.Position = UDim2.new(0, 75, 0, 8)
	ActLabel.Size = UDim2.new(0, 95, 0, 18)
	ActLabel.FontFace = Font.new("rbxassetid://11702779409", Enum.FontWeight.Medium, Enum.FontStyle.Normal) 
	ActLabel.Text = "Activate Key"
	ActLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	ActLabel.TextSize = 17.000

	acticon.Name = "acticon"
	acticon.ImageTransparency = 1
	acticon.Parent = actkey
	acticon.BackgroundTransparency = 1.000
	acticon.BorderSizePixel = 0
	acticon.Position = UDim2.new(0, 10, 0, 5)
	acticon.Size = UDim2.new(0, 23, 0, 23)
	acticon.Image = "http://www.roblox.com/asset/?id=17787131932"

	UICorner_4.CornerRadius = UDim.new(0, 5)
	UICorner_4.Parent = actkey

	MainKeyCorner.CornerRadius = UDim.new(0, 7)
	MainKeyCorner.Name = "MainKeyCorner"
	MainKeyCorner.Parent = KeyMenu

	support.Name = "support"
	support.Parent = KeyMenu
	support.BackgroundTransparency = 1
	support.Active = false
	support.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	support.BackgroundTransparency = 1.000
	support.BorderSizePixel = 0
	support.Position = UDim2.new(0, 387, 0, 114) -- 0, 387, 0, 114
	support.Selectable = false
	support.Size = UDim2.new(0, 26, 0, 23)
	support.AutoButtonColor = false
	support.Text = ""

	discordLogo.Name = "discordLogo"
	discordLogo.ImageTransparency = 1
	discordLogo.Parent = support
	discordLogo.BackgroundTransparency = 1.000
	discordLogo.BorderSizePixel = 0
	discordLogo.Position = UDim2.new(0, 5, 0, 3)
	discordLogo.Size = UDim2.new(0, 17, 0, 17)
	discordLogo.Image = "http://www.roblox.com/asset/?id=17771966180"

	UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_3.Color = Color3.fromRGB(7, 80, 165)
	UIStroke_3.Parent = support
	UIStroke_3.Thickness = 0

	UICorner_5.CornerRadius = UDim.new(0, 5)
	UICorner_5.Parent = support

	keyIndicator.Name = "keyIndicator"
	keyIndicator.Parent = KeyMenu
	keyIndicator.BackgroundTransparency = 1.000
	keyIndicator.BorderSizePixel = 0
	keyIndicator.Position = UDim2.new(0, 13, 0, 122)
	keyIndicator.Size = UDim2.new(0, 47, 0, 16)
	keyIndicator.FontFace = Font.new("rbxassetid://11702779409", Enum.FontWeight.Medium, Enum.FontStyle.Normal) 
	keyIndicator.Text = "Your HWID:"
	keyIndicator.TextColor3 = Color3.fromRGB(255, 255, 255)
	keyIndicator.TextSize = 12.000
	keyIndicator.TextXAlignment = Enum.TextXAlignment.Left
	keyIndicator.TextTransparency = 1

	userkey.Name = "userkey"
	userkey.Parent = KeyMenu
	userkey.BackgroundTransparency = 1.000
	userkey.BorderSizePixel = 0
	userkey.Position = UDim2.new(0, 65, 0, 122)
	userkey.Size = UDim2.new(0, 80, 0, 16)
	userkey.FontFace = Font.new("rbxassetid://11702779409", Enum.FontWeight.Bold, Enum.FontStyle.Normal) 
	userkey.Text = gethwid()
	userkey.TextColor3 = Color3.fromRGB(255, 255, 255)
	userkey.TextSize = 13.000
	userkey.TextTruncate = Enum.TextTruncate.AtEnd
	userkey.TextTransparency = 1
	userkey.TextXAlignment = Enum.TextXAlignment.Left

	UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(165, 62, 214)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(213, 52, 178))}
	UIGradient_3.Rotation = 4.940999984741211
	UIGradient_3.Parent = userkey

	Copy.Name = "Copy"
	Copy.Parent = KeyMenu
	Copy.Active = false
	Copy.BackgroundTransparency = 1.000
	Copy.BorderSizePixel = 0
	Copy.Position = UDim2.new(0, 150, 0, 122)
	Copy.Selectable = false
	Copy.Size = UDim2.new(0, 15, 0, 15)
	Copy.AutoButtonColor = false
	Copy.ImageTransparency = 1
	Copy.Image = "rbxassetid://17771919084"
	
	promocode.Visible = true -- Feature not implemented yet
	promocode.Name = "promocode"
promocode.Parent = KeyMenu
promocode.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
promocode.BorderColor3 = Color3.fromRGB(27, 42, 53)
promocode.BorderSizePixel = 0
promocode.Position = UDim2.new(0, 422, 0, 114)
promocode.Selectable = false
promocode.Size = UDim2.new(0, 26, 0, 23)
promocode.AutoButtonColor = false
promocode.Text = ""

gifticon.Name = "gifticon"
gifticon.Parent = promocode
gifticon.BackgroundTransparency = 1.000
gifticon.BorderColor3 = Color3.fromRGB(27, 42, 53)
gifticon.BorderSizePixel = 0
gifticon.Position = UDim2.new(0, 5, 0, 3)
gifticon.Size = UDim2.new(0, 17, 0, 17)
gifticon.Image = "rbxassetid://18582971695"

promo_stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
promo_stroke.Color = Color3.fromRGB(255, 255, 255)
promo_stroke.Name = "promo_stroke"
promo_stroke.Parent = promocode

promo_corner.CornerRadius = UDim.new(0, 5)
promo_corner.Name = "promo_corner"
promo_corner.Parent = promocode

codebox.Name = "codebox"
codebox.Parent = MAIN_KEY
codebox.Visible = false
codebox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
codebox.BorderColor3 = Color3.fromRGB(0, 0, 0)
codebox.BorderSizePixel = 0
codebox.ClipsDescendants = true
codebox.Position = UDim2.new(0.708851576, 0, 1.04137933, 0)
codebox.Size = UDim2.new(0, 133, 0, 20)
codebox.FontFace = Font.new("rbxassetid://11702779409", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
codebox.PlaceholderColor3 = Color3.fromRGB(102, 102, 102)
codebox.PlaceholderText = "Enter code..."
codebox.Text = ""
codebox.TextColor3 = Color3.fromRGB(230, 230, 230)
codebox.TextSize = 12.000
codebox.Position = UDim2.new(KeyMenu.Position.X.Scale, KeyMenu.Position.X.Offset + KeyMenu.Size.X.Offset / 2 - codebox.Size.X.Offset, KeyMenu.Position.Y.Scale, KeyMenu.Position.Y.Offset + KeyMenu.Size.Y.Offset / 2 + 10)

code_corner.CornerRadius = UDim.new(0, 6)
code_corner.Name = "code_corner"
code_corner.Parent = codebox

code_stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
code_stroke.Color = Color3.fromRGB(116, 116, 116)
code_stroke.Name = "code_stroke"
code_stroke.Parent = codebox

	for _,obj in pairs(KeyMenu:GetDescendants()) do
		AW.fadeIn(KeyMenu, 0.5)
		AW.fadeIn(obj, 0.5)
	end

    Copy.MouseButton1Click:Connect(function()
        utils.popup("Copied to clipboard")
	    seetclipboard(gethwid())
    end)
    
    -- shitty function
    function switch()
            if codebox.Visible == false then 
		    codebox.Visible = true
		else
			codebox.Visible = false
		end
	end
    
        promocode.MouseButton1Click:Connect(function()
        switch()
    end)
    codebox.FocusLost:Connect(function(enter)
		if enter then 
	        if verify_key(codebox.Text) then 
				task.spawn(function()
					CloseKey()
					--print("authenticated")
					utils.popup("Authenticated successfully. Loading...")
					loadstring(game:HttpGet("https://raw.githubusercontent.com/AnyaHubsV2/CMDXCBX/main/CubixBeta.lua", true))()
				end)
			end
	    end
     end)
    
	minimize.MouseButton1Click:Connect(function()
		if hidden == false then
			hidden = true
			minimize.Text = "+"
			KeyMenu:TweenSize(UDim2.new(0, 460, 0, 30), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.7)
		else
			hidden = false
			minimize.Text = "-"
			KeyMenu:TweenSize(UDim2.new(0, 460, 0, 145), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 0.5)
		end
	end)

	local function CloseKey()
		task.spawn(function()
			local closeuiTween = tweenService:Create(KeyMenu, TweenInfo.new(0.7, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(KeyMenu.Position.X.Scale, KeyMenu.Position.X.Offset, KeyMenu.Position.Y.Scale, KeyMenu.Position.Y.Offset + 50)}) 
			closeuiTween.Completed:Connect(function() 
				MAIN_KEY:Destroy() 
			end)
			closeuiTween:Play() 
			for _,obj in pairs(KeyMenu:GetDescendants()) do
				AW.fadeOut(KeyMenu, 0.5)
				AW.fadeOut(obj, 0.5)
			end 
		end)
	end

	close.MouseButton1Click:Connect(function()
		CloseKey()
	end)

	loginkey.MouseButton1Click:Connect(function()
		task.spawn(function()
			local loadTween = tweenService:Create(loginkey, TweenInfo.new(0.7, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundTransparency = 0.2})
			Key.Visible = false
			Loading.Visible = true
			local loadTween2 = tweenService:Create(Loading, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Rotation = 999})
			loadTween:Play()
			loadTween2:Play()
			task.wait(1)
			if(is_authenticated()) then 
			task.spawn(function()
				--if isfile("AW_Settings/key.txt") then delfile("AW_Settings/key.txt") end
				--writefile("AW_Settings/key.txt", inputbox.Text)
				CloseKey()
				--print("authenticated")
				utils.popup("Authenticated successfully. Loading...")
				loadstring(game:HttpGet("https://raw.githubusercontent.com/AnyaHubsV2/CMDXCBX/main/CubixBeta.lua", true))()
			end)
			else
				Key.Visible = true
				Loading.Visible = false
				tweenService:Create(loginkey, TweenInfo.new(0.7, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
				loadTween2:Cancel()
				utils.popup("Key not authenticated, Please Activate your key.")
			end
		end)
	end)

	support.MouseButton1Click:Connect(function()
		open_discord()
	end)

	actkey.MouseButton1Click:Connect(function()
		utils.popup("Copied to clipboard")
		get_key_link()
	end)
	

	--- [ DRAG ]
	
	local USERINPUTSERVICE = game:GetService("UserInputService")
	local AIM = KeyMenu

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		AIM.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	AIM.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = AIM.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	AIM.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	USERINPUTSERVICE.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

	utils.popup("Checking authentication...")
	-- wait 3 seconds in lua
	task.wait(3)
	if(is_authenticated()) then
		utils.popup("Authenticated successfully. Loading...")
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AnyaHubsV2/CMDXCBX/main/CubixBeta.lua", true))()
		CloseKey()
	else
		utils.popup("Key not authenticated, Please Active your key.")
	end
