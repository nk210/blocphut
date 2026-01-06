local VIM = game:GetService("VirtualInputManager")
local rng = Random.new()

-- ====== CẤU HÌNH TỐC ĐỘ (Càng nhỏ càng nhanh) ======
local SPEED_MIN = 0.01 -- 0.01 giây (cực nhanh)
local SPEED_MAX = 0.05
-- ===================================================

-- Hàm nhấn phím siêu tốc
local function fastTap(keyCode)
    VIM:SendKeyEvent(true, keyCode, false, game)
    -- Loại bỏ hoặc giảm task.wait giữ phím để đạt tốc độ tối đa
    VIM:SendKeyEvent(false, keyCode, false, game)
end

-- Tách riêng để Space không phải chờ Q và ngược lại
-- TIẾN TRÌNH SPAM SPACE
task.spawn(function()
    while true do
        fastTap(Enum.KeyCode.Space)
        task.wait(rng:NextNumber(SPEED_MIN, SPEED_MAX))
    end
end)

-- TIẾN TRÌNH SPAM Q
task.spawn(function()
    while true do
        fastTap(Enum.KeyCode.Q)
        task.wait(rng:NextNumber(SPEED_MIN, SPEED_MAX))
    end
end)

