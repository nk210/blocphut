local VIM = game:GetService("VirtualInputManager")
local rng = Random.new()

-- ====== CẤU HÌNH TỐC ĐỘ ======
local SPEED_MIN = 0.01 
local SPEED_MAX = 0.05 
-- ============================

local function fastJump()
    VIM:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
    VIM:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
end

task.spawn(function()
    while true do
        fastJump()
        -- Khoảng nghỉ siêu ngắn
        task.wait(rng:NextNumber(SPEED_MIN, SPEED_MAX))
    end
end)
