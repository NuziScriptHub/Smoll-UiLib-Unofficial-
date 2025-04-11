
local smoll = loadstring(game:HttpGet("https://your-url.com/Smoll_UiLib_Final_Real_Complete.lua"))()
local ui = smoll.SetupUI({
    Title = "Smoll UI Complete Example",
    Theme = "Purple"
})

local tab = ui.CreateTabs({ Text = "Main Tab" })

tab.CreateLabel("LEFT TEXT", Enum.TextXAlignment.Left)
tab.CreateLabel("CENTER TEXT", Enum.TextXAlignment.Center)
tab.CreateLabel("RIGHT TEXT", Enum.TextXAlignment.Right)

tab.CreateTextbox({
    Placeholder = "Type here...",
    Callback = function(text) print("Textbox:", text) end
})

tab.CreateMultilineTextbox({
    Placeholder = "Multiline input...",
    Callback = function(text) print("Multiline:", text) end
})

tab.CreateCheckboxGroup({
    Options = { "One", "Two", "Three" },
    Callback = function(selected)
        print("Selected:", table.concat(selected, ", "))
    end
})

local progress = tab.CreateProgressBar({
    Text = "Loading...",
    Progress = 0.3
})

task.delay(2, function()
    progress.SetProgress(1)
end)

tab.CreateToast({
    Text = "Welcome to Smoll UI!",
    Duration = 2
})

tab.CreateDropdown({
    Text = "Choose something",
    TableList = { "Apple", "Banana", "Cherry" },
    Callback = function(choice)
        print("You chose:", choice)
    end
})

tab.CreateSlider({
    Text = "Volume",
    Minimum = 0,
    Maximum = 100,
    Default = 50,
    Callback = function(val)
        print("Slider Value:", val)
    end
})

tab.CreateKeybind({
    Text = "Press a Key",
    Callback = function(key)
        print("Key Pressed:", key)
    end
})

tab.CreateColorPicker({
    Text = "Color Picker",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(color)
        print("Picked Color:", color)
    end
})

tab.CreateButtons({
    Text = "Destroy UI",
    Callback = function()
        smoll.DestroyUI()
    end
})

tab.CreateToggle({
    Text = "Enable something",
    Callback = function(state)
        print("Toggle is now:", state)
    end
})
