local VIM = game:GetService("VirtualInputManager")
local rng = Random.new()

-- ====== CẤU HÌNH TỐC ĐỘ ======
local SPEED_MIN = 0.01 
local SPEED_MAX = 0.05 
-- ============================

local function fastTapQ()
    VIM:SendKeyEvent(true, Enum.KeyCode.Q, false, game)
    VIM:SendKeyEvent(false, Enum.KeyCode.Q, false, game)
end

task.spawn(function()
    while true do
        fastTapQ()
        -- Tạo khoảng nghỉ ngẫu nhiên cực ngắn để tránh bị lỗi hoặc bị kick
        task.wait(rng:NextNumber(SPEED_MIN, SPEED_MAX))
    end
end)
