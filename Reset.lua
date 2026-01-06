local VIM = game:GetService("VirtualInputManager")

local function fastReset()
    -- Nhấn phím R để mở menu reset
    VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game)
    task.wait(0.05)
    VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game)
    
    task.wait(0.1) -- Đợi menu hiện ra một chút
    
    -- Nhấn Enter để xác nhận Reset
    VIM:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
    task.wait(0.05)
    VIM:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
end

