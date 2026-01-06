Local VIM = game:GetService("VirtualInputManager")
local cam = workspace.CurrentCamera

local rng = Random.new()

-- ====== RANGE RANDOM CHO MIN / MAX ======
local MIN_DELAY_RANGE = {0.4, 0.5}
local MAX_DELAY_RANGE = {0.5, 0.6}

-- ====== TỌA ĐỘ CLICK (Đã chỉnh sửa cho nút Jump) ======
-- Nút Jump nằm ở góc dưới bên phải
local CLICK_X_RATIO = 0.88  -- Tăng lên để dời sang phải (88% chiều ngang)
local CLICK_Y_RATIO = 0.82  -- Tăng lên để dời xuống dưới (82% chiều dọc)
-- =======================================

task.spawn(function()
    while true do
        -- random min / max mỗi vòng
        local minDelay = rng:NextNumber(MIN_DELAY_RANGE[1], MIN_DELAY_RANGE[2])
        local maxDelay = rng:NextNumber(MAX_DELAY_RANGE[1], MAX_DELAY_RANGE[2])

        -- đảm bảo max luôn > min
        if maxDelay <= minDelay then
            maxDelay = minDelay + 0.1
        end

        -- random delay thật
        local delay = rng:NextNumber(minDelay, maxDelay)

        local vp = cam.ViewportSize
        local x = vp.X * CLICK_X_RATIO
        local y = vp.Y * CLICK_Y_RATIO

        -- Gửi sự kiện click
        VIM:SendMouseButtonEvent(x, y, 0, true, game, 0)
        VIM:SendMouseButtonEvent(x, y, 0, false, game, 0)

        task.wait(delay)
    end
end)
