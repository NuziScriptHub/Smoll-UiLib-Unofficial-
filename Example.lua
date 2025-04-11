
-- FULL EXAMPLE SCRIPT: Semua komponen dari tab object

local smoll = loadstring(game:HttpGet('https://yourdomain.com/smoll_ui_source_with_tab_textbox.lua'))()
local idk = smoll.SetupUI({
    Title = "THIS! IS! title :>"
})

local againidk = idk.CreateTabs({
    Text = "THIS! IS! tabs :>"
})

againidk.CreateToggle({
    Text = "THIS! IS! toggle :>",
    Callback = function(a)
        print("Toggle state:", a)
    end,
})

againidk.CreateSlider({
    Text = "THIS! IS! slider :>",
    Minimum = 0,
    Maximum = 1,
    Default = 0.5,
    Precise = true,
    Callback = function(a)
        print("Slider value:", a)
    end,
})

againidk.CreateDropdown({
    Text = "Select Something rAndOm",
    TableList = {"sus","hayayaya","lol","bruh","heh?","oaoaosjdhdf","kys"},
    Callback = function(a)
        print("Dropdown selected:", a)
    end,
})

againidk.CreateButtons({
    Text = "kick your mom",
    Callback = function()
        print("Successfully kicked your mom")
    end,
})

againidk.CreateLabel("CENTER TEXT", Enum.TextXAlignment.Center)
againidk.CreateLabel("LEFT TEXT", Enum.TextXAlignment.Left)

-- Textbox now under againidk
againidk.CreateTextbox({
    Placeholder = "Type something...",
    Callback = function(text)
        print("You typed:", text)
    end
})

-- Tombol untuk hancurkan UI
againidk.CreateButtons({
    Text = "Destroy GUI",
    Callback = function()
        smoll.DestroyUI()
    end
})
