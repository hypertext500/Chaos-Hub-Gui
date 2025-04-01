local chaoshubmodule = {}
local LocalizationService = game:GetService("LocalizationService")
local PlayerGui = gethui() or game:GetService("CoreGui")
local ChaosHubKey_Interface = PlayerGui:FindFirstChild("chaos hub key")
local placeholdertextbr, getkeytextbr, checkkeytextbr

if isfile and writefile and readfile then
  if not isfile("chaoshubkey") then
    writefile("chaoshubkey", "some_data_here") 
  end

  function chaoshubmodule.CheckKeyFile(callback)
    if callback and isfile("chaoshubkey") then
      local ketdata = readfile("chaoshubkey")
      if #ketdata > 0 then
        callback(ketdata)
      end
    end
  end
  
  function chaoshubmodule.SaveKeyFile(key)
    if key and #key > 0 and isfile("chaoshubkey") then
      writefile("chaoshubkey", key) 
    end
  end
  
  function chaoshubmodule.CheckPermission()
    return true
  end
  
else
  warn("The chaos hub did not allow access to the folder")
  function chaoshubmodule.CheckPermission()
    return false
  end
end

if LocalizationService.RobloxLocaleId == "pt-br" then
  placeholdertextbr = "Coloque a key aqui"
  getkeytextbr = "Pegar a key"
  checkkeytextbr = "Verificar a key"
else
  placeholdertextbr = "Put your key here"
  getkeytextbr = "Get key"
  checkkeytextbr = "Check key"
end

if ChaosHubKey_Interface then
  ChaosHubKey_Interface:Destroy()
end

local chaoshubkey = Instance.new("ScreenGui")
local background = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local containermain = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local inputkey = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local containerbutton = Instance.new("Frame")
local containerButton_ListLayout = Instance.new("UIListLayout")
local checkkey = Instance.new("TextButton")
local UIPadding_3 = Instance.new("UIPadding")
local closebutton_UIPadding = Instance.new("UIPadding")
local UICorner_4 = Instance.new("UICorner")
local closebutton_UICorner = Instance.new("UICorner")
local closebuttonStroke = Instance.new("UIStroke")
local backgroundStroke = Instance.new("UIStroke")
local inputKeyStroke = Instance.new("UIStroke")
local checkKeyStroke = Instance.new("UIStroke")
local closebutton = Instance.new("TextButton")

chaoshubkey.Name = "chaos hub key"
chaoshubkey.ResetOnSpawn = false
chaoshubkey.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
chaoshubkey.Parent = PlayerGui

background.Name = "background"
background.Parent = chaoshubkey
background.AnchorPoint = Vector2.new(0.5, 0.5)
background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
background.BackgroundTransparency = 0.300
background.BorderColor3 = Color3.fromRGB(0, 0, 0)
background.BorderSizePixel = 0
background.Position = UDim2.new(0.5, 0, 0.5, 0)
background.Size = UDim2.new(0, 400, 0, 216)

backgroundStroke.Thickness = 3
backgroundStroke.Color = Color3.fromRGB(255, 255, 255)
backgroundStroke.Parent = background

UICorner.CornerRadius = UDim.new(0.0500000007, 0)
UICorner.Parent = background

title.Name = "title"
title.Parent = background
title.AnchorPoint = Vector2.new(0.5, 0)
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.5, 0, 0.0362222455, 0)
title.Size = UDim2.new(0, 200, 0, 50)
title.Font = Enum.Font.Unknown
title.Text = "Chaos hub key"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true
title.FontFace = Font.new("rbxasset://fonts/families/Roboto.json", Enum.FontWeight.Bold)

containermain.Name = "container main"
containermain.Parent = background
containermain.AnchorPoint = Vector2.new(0.5, 0)
containermain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
containermain.BackgroundTransparency = 1.000
containermain.BorderColor3 = Color3.fromRGB(0, 0, 0)
containermain.BorderSizePixel = 0
containermain.Position = UDim2.new(0.5, 0, 0.349999994, 0)
containermain.Size = UDim2.new(1, 0, 0.600000024, 0)

UIListLayout.Parent = containermain
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

inputkey.Name = "inputkey"
inputkey.Parent = containermain
inputkey.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
inputkey.BackgroundTransparency = 0.650
inputkey.BorderColor3 = Color3.fromRGB(0, 0, 0)
inputkey.BorderSizePixel = 0
inputkey.Position = UDim2.new(-0.00313868397, 0, -0.025308514, 0)
inputkey.Size = UDim2.new(0.800000012, 0, 0.25, 0)
inputkey.Font = Enum.Font.Unknown
inputkey.PlaceholderColor3 = Color3.fromRGB(213, 213, 213)
inputkey.PlaceholderText = placeholdertextbr
inputkey.Text = ""
inputkey.TextColor3 = Color3.fromRGB(255, 255, 255)
inputkey.TextScaled = true
inputkey.TextSize = 14.000
inputkey.TextWrapped = true
inputkey.FontFace = Font.new("rbxasset://fonts/families/Roboto.json", Enum.FontWeight.Bold)

inputKeyStroke.Thickness = 2
inputKeyStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
inputKeyStroke.Color = Color3.fromRGB(255, 255, 255)
inputKeyStroke.Parent = inputkey

UICorner_2.CornerRadius = UDim.new(0.200000003, 0)
UICorner_2.Parent = inputkey

UIPadding.Parent = inputkey
UIPadding.PaddingBottom = UDim.new(0.200000003, 0)
UIPadding.PaddingLeft = UDim.new(0.200000003, 0)
UIPadding.PaddingRight = UDim.new(0.200000003, 0)
UIPadding.PaddingTop = UDim.new(0.200000003, 0)

containerbutton.Name = "container button"
containerbutton.Parent = containermain
containerbutton.BackgroundColor3 = Color3.fromRGB(111, 111, 111)
containerbutton.BackgroundTransparency = 1.000
containerbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
containerbutton.BorderSizePixel = 0
containerbutton.Position = UDim2.new(0.0533584431, 0, 1.53549361, 0)
containerbutton.Size = UDim2.new(0.800000012, 0, 0.699999988, 0)

containerButton_ListLayout.Parent = containerbutton
containerButton_ListLayout.FillDirection = Enum.FillDirection.Horizontal
containerButton_ListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
containerButton_ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
containerButton_ListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
containerButton_ListLayout.Padding = UDim.new(0, 30)

function chaoshubmodule.CreateGetKeyButton(callback)
  
  if containerbutton:FindFirstChild("get key") then return end
  
  local getkey = Instance.new("TextButton")
  local getKeyStroke = Instance.new("UIStroke")
  local getKeyPadding = Instance.new("UIPadding")
  local getKeyCorner = Instance.new("UICorner")
  getkey.Name = "get key"
  getkey.Parent = containerbutton
  getkey.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  getkey.BackgroundTransparency = 0.650
  getkey.BorderColor3 = Color3.fromRGB(0, 0, 0)
  getkey.BorderSizePixel = 0
  getkey.Position = UDim2.new(0.0982423201, 0, 0.300925791, 0)
  getkey.Size = UDim2.new(0.449999988, 0, 0, 50)
  getkey.Font = Enum.Font.Unknown
  getkey.Text = getkeytextbr
  getkey.TextColor3 = Color3.fromRGB(255, 255, 255)
  getkey.TextScaled = true
  getkey.TextSize = 14.000
  getkey.TextStrokeTransparency = 0.000
  getkey.TextWrapped = true
  getkey.FontFace = Font.new("rbxasset://fonts/families/Roboto.json", Enum.FontWeight.Bold)
  
  getKeyStroke.Thickness = 2
  getKeyStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
  getKeyStroke.Color = Color3.fromRGB(255, 255, 255)
  getKeyStroke.Parent = getkey
  
  getKeyPadding.Parent = getkey
  getKeyPadding.PaddingBottom = UDim.new(0.200000003, 0)
  getKeyPadding.PaddingLeft = UDim.new(0.200000003, 0)
  getKeyPadding.PaddingRight = UDim.new(0.200000003, 0)
  getKeyPadding.PaddingTop = UDim.new(0.200000003, 0)
  
  getKeyCorner.CornerRadius = UDim.new(0.200000003, 0)
  getKeyCorner.Parent = getkey
  
  if callback and type(callback) == "function" then
    getkey.MouseButton1Click:Connect(callback)
  end
  
end

function chaoshubmodule.CreateCheckKeyButton(callback)
  if containerbutton:FindFirstChild("check key") then return end

  local checkkey = Instance.new("TextButton")
  local checkKeyStroke = Instance.new("UIStroke")
  local checkKeyPadding = Instance.new("UIPadding")
  local checkKeyCorner = Instance.new("UICorner")

  checkkey.Name = "check key"
  checkkey.Parent = containerbutton
  checkkey.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  checkkey.BackgroundTransparency = 0.650
  checkkey.BorderColor3 = Color3.fromRGB(0, 0, 0)
  checkkey.BorderSizePixel = 0
  checkkey.Position = UDim2.new(0.0982423201, 0, 0.300925791, 0)
  checkkey.Size = UDim2.new(0.449999988, 0, 0, 50)
  checkkey.Font = Enum.Font.Unknown
  checkkey.Text = checkkeytextbr
  checkkey.TextColor3 = Color3.fromRGB(255, 255, 255)
  checkkey.TextScaled = true
  checkkey.TextSize = 14.000
  checkkey.TextWrapped = true
  checkkey.FontFace = Font.new("rbxasset://fonts/families/Roboto.json", Enum.FontWeight.Bold)

  checkKeyStroke.Thickness = 2
  checkKeyStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
  checkKeyStroke.Color = Color3.fromRGB(255, 255, 255)
  checkKeyStroke.Parent = checkkey

  checkKeyPadding.Parent = checkkey
  checkKeyPadding.PaddingBottom = UDim.new(0.200000003, 0)
  checkKeyPadding.PaddingLeft = UDim.new(0.200000003, 0)
  checkKeyPadding.PaddingRight = UDim.new(0.200000003, 0)
  checkKeyPadding.PaddingTop = UDim.new(0.200000003, 0)

  checkKeyCorner.CornerRadius = UDim.new(0.200000003, 0)
  checkKeyCorner.Parent = checkkey

  if callback and type(callback) == "function" then
    checkkey.MouseButton1Click:Connect(function()
      callback(inputkey.Text)
    end)
  end
end

closebutton.Name = "close button"
closebutton.Parent = background
closebutton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
closebutton.BackgroundTransparency = 0.300
closebutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
closebutton.BorderSizePixel = 0
closebutton.Position = UDim2.new(0.841954112, 0, 0.079885833, 0)
closebutton.Size = UDim2.new(0, 35, 0, 35)
closebutton.Font = Enum.Font.Unknown
closebutton.Text = "X"
closebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
closebutton.FontFace = Font.new("rbxasset://fonts/families/Roboto.json", Enum.FontWeight.Bold)
closebutton.TextScaled = true
closebutton.TextSize = 14.000
closebutton.TextWrapped = true

closebuttonStroke.Thickness = 2
closebuttonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
closebuttonStroke.Color = Color3.fromRGB(255, 255, 255)
closebuttonStroke.Parent = closebutton

closebutton_UIPadding.Parent = closebutton
closebutton_UIPadding.PaddingBottom = UDim.new(0, 8)
closebutton_UIPadding.PaddingLeft = UDim.new(0, 8)
closebutton_UIPadding.PaddingRight = UDim.new(0, 8)
closebutton_UIPadding.PaddingTop = UDim.new(0, 8)

closebutton_UICorner.CornerRadius = UDim.new(0.500000003, 0)
closebutton_UICorner.Parent = closebutton

closebutton.MouseButton1Click:Connect(function()
  
  chaoshubkey:Destroy()
  
end)

return chaoshubmodule
