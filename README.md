# Mania UiLib Unofficial
Mania UiLib is simply it Smoll UiLib but i modified to make more functional than that

# Thing I Add
*Textbox
*MultiTextbox
*Keyblind
*Colorpicker // Buggy
*Progress Bar // Buggy

# When Did You Will Fix That
Idk lol

# Previous
![Screenshot_20250412-121055_Roblox](https://github.com/user-attachments/assets/7c25c11c-d362-460a-b40c-19cc7bafd17c)

# Example
local ManiaUi = loadstring(game:HttpGet('https://raw.githubusercontent.com/NuziScriptHub/Smoll-UiLib-Unofficial-/refs/heads/main/Source.lua'))()
local Ui = ManiaUi.SetupUI({
    Title = "Mania Ui Lib Example"
})

-- Tabs
local MainTab = Ui.CreateTabs({
    Text = "Example Ui"
})

-- Toggle
MainTab.CreateToggle({
    Text = "Enable Features",
    Callback = function(a)
        print("Toggle state:", a)
    end,
})

-- Button
MainTab.CreateButtons({
    Text = "Button",
    Callback = function()
        print("Button")
    end,
})

-- Textbox
MainTab.CreateTextbox({
    Placeholder = "Type something...",
    Callback = function(text)
        print("You typed:", text)
    end
})

-- MultiTextbox
MainTab.CreateMultiTextbox({
    Placeholder1 = "Line 1...",
    Placeholder2 = "Line 2...",
    Callback = function(line1, line2)
        print("Line 1:", line1)
        print("Line 2:", line2)
    end
})

-- Slider
MainTab.CreateSlider({
    Text = "Adjust Value",
    Minimum = 0,
    Maximum = 1,
    Default = 0.5,
    Precise = true,
    Callback = function(a)
        print("Slider value:", a)
    end,
})

-- Dropdown
MainTab.CreateDropdown({
    Text = "Choose Something // Buggy",
    TableList = {"Item 1","Item 2","Item 3","Item 4","Item 5","Item 6","Item 7"},
    Callback = function(a)
        print("Dropdown selected:", a)
    end,
})

-- Keybind
MainTab.CreateKeyblind({
    Text = "Press the Button",
    Default = Enum.KeyCode.K,
    Callback = function(key)
        print("Key pressed:", key)
    end
})

-- Colorpicker
MainTab.CreateColorPicker({
    Text = "Choose Color // Buggy",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(color)
        print("Color selected:", color)
    end
})

-- ProgressBar
MainTab.CreateProgressBar({
    Text = "Loading... // Buggy",
    Minimum = 0,
    Maximum = 100,
    Value = 50, -- Atur ke nilai awal yang diinginkan
    Color = Color3.fromRGB(0, 255, 0),
    Callback = function(newValue)
        print("Progress updated to:", newValue)
    end
})

-- Label
MainTab.CreateLabel("Middle Text", Enum.TextXAlignment.Center)
MainTab.CreateLabel("Left Text", Enum.TextXAlignment.Left)
