-- Phạm Nghĩa IOS - Blox Fruits Script v1
-- GUI y hệt bản Min Gaming bạn chọn

-- 1. Load UI library (nếu dùng OrionLib hoặc Kavo UI)
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/your-ui-lib-source.lua"))()

-- 2. Tạo window chính
local Window = OrionLib:MakeWindow({
    Name = "Phạm Nghĩa IOS - Blox Fruits",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "PhanNghiaIOSHub"
})

-- 3. Thêm avatar và title
local TabInfo = Window:MakeTab({
    Name = "Thông tin",
    Icon = "rbxassetid://44533409",
    PremiumOnly = false
})

TabInfo:AddButton({
    Name = "Avatar Obito",
    Callback = function()
        -- Nếu bạn muốn thực hiện gì khi click
        print("Đã chọn avatar Obito")
    end
})

-- 4. Tạo tabs giống bản gốc
local TabMain = Window:MakeTab({ Name = "Main", Icon = "rbxassetid://4483345998" })
local SectionFarm = TabMain:AddSection({ Name = "Auto Farm" })

SectionFarm:AddToggle({
    Name = "Auto Farm Level",
    Default = false,
    Callback = function(state)
        if state then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/AutoFarm.lua"))()
        end
    end
})

SectionFarm:AddToggle({
    Name = "Auto Stats",
    Default = false,
    Callback = function(state)
        if state then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/AutoStats.lua"))()
        end
    end
})

-- (Bạn có thể thêm thêm các toggle: Chest, Raid, Teleport, v.v. từ link script gốc)

-- 5. Tab Graphics, Visual, Settings... bạn thêm tương tự

-- 6. Load script gốc (MinXoE) — giữ nguyên toàn bộ chức năng
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinXoE"))()
