local VIM = game:GetService("VirtualInputManager")

local function fullReset()
    -- 1. Nhấn ESC để mở Menu chính
    VIM:SendKeyEvent(true, Enum.KeyCode.Escape, false, game)
    task.wait(0.1)
    VIM:SendKeyEvent(false, Enum.KeyCode.Escape, false, game)
    
    task.wait(0.1) -- Đợi menu hiện lên

    -- 2. Nhấn R để chọn lệnh Reset
    VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game)
    task.wait(0.1)
    VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game)
    
    task.wait(0.1) -- Đợi bảng xác nhận hiện lên

    -- 3. Nhấn Enter (Return) để xác nhận Reset
    VIM:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
    task.wait(0.1)
    VIM:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
end

-- Chạy lệnh reset
fullReset()
