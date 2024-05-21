-- // Visual Command UI Library Example
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20Command%20UI%20Library/Source.lua', true))()

local Window = Library:CreateWindow({
    Name = 'OS',
    IntroText = 'OS commands',
    IntroIcon = 'rbxassetid://10618644218',
    IntroBlur = true,
    IntroBlurIntensity = 15,
    Theme = Library.Themes.dark,
    Position = 'bottom',
    Draggable = true,
    Prefix = ';'
})

-- // Commands
Window:AddCommand('Баннер', {'Текст'}, 'Меняет нижний текст баннеров', function(Arguments)
workspace.AdBillboards.Billboard.Screen:GetChildren()[2].ContextFrame:GetChildren()[2].Text = (Arguments)

        workspace.AdBillboards.Billboard.Screen.Interface.ContextFrame:GetChildren()[2].Text = (Arguments)

        workspace.AdBillboards:GetChildren()[4].Screen:GetChildren()[2].ContextFrame:GetChildren()[2].Text = (Arguments)

        workspace.AdBillboards:GetChildren()[4].Screen.Interface.ContextFrame:GetChildren()[2].Text = (Arguments)

        workspace.AdBillboards.PlasmaTV.Screen:GetChildren()[2].ContextFrame:GetChildren()[2].Text = (Arguments)

        workspace.AdBillboards.PlasmaTV.Screen.Interface.ContextFrame:GetChildren()[2].Text = (Arguments)

        workspace.AdBillboards:GetChildren()[2].Screen:GetChildren()[2].ContextFrame:GetChildren()[2].Text = (Arguments)

       workspace.AdBillboards:GetChildren()[2].Screen.Interface.ContextFrame:GetChildren()[2].Text = (Arguments)

       workspace.AdBillboards:GetChildren()[3].Screen:GetChildren()[2].ContextFrame:GetChildren()[2].Text = (Arguments)

       workspace.AdBillboards:GetChildren()[2].Screen.Interface.ContextFrame:GetChildren()[2].Text = (Arguments)

       workspace.AdBillboards:GetChildren()[2].Screen.Interface.ContextFrame.TextLabel.Text = (Arguments)
end)

Window:AddCommand('SetPrefix', {'New Prefix'}, 'Changes The Prefix.', function(Arguments, Speaker)
    Window:ChangePrefix(Arguments[1])
end)

Window:AddCommand('SetTheme', {'New Theme'}, 'Changes The Theme.', function(Arguments, Speaker)
    Window:ChangeTheme(Arguments[1])
end)

Window:AddCommand('HelloWorld', {}, 'Prints \'Hello World\'.', function(Arguments, Speaker)
    print('Hello World')
end)

Window:AddCommand('Notify', {}, 'Creates A Notification.', function(Arguments, Speaker)
    Window:CreateNotification('Visual Command UI Library', 'Notification', 5)
end)

-- // Functions
Window:AddTheme('test', {
    BackgroundColor = Color3.fromRGB(0, 255, 255),
    SecondaryColor = Color3.fromRGB(225, 225, 225),
    AccentColor = Color3.fromRGB(125, 125, 125),
    PrimaryTextColor = Color3.fromRGB(0, 0, 0),
    SecondaryTextColor = Color3.fromRGB(75, 75, 75)
})

for _, Theme in next, Window:GetThemes(true) do
    print(Theme)
end

for Index, Theme in next, Window:GetThemes(false) do
    print(Index, Theme)
end
