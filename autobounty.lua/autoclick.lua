local VIM = game:GetService("VirtualInputManager")
local rng = Random.new()

-- ====== CẤU HÌNH DELAY ======
local MIN_DELAY = 0.1
local MAX_DELAY = 0.2

-- Hàm thực hiện nhấn phím giả lập
local function pressKey(keyCode)
    VIM:SendKeyEvent(true, keyCode, false, game) -- Nhấn xuống
    task.wait(0.05)                             -- Giữ phím một chút cho chắc chắn
    VIM:SendKeyEvent(false, keyCode, false, game)-- Thả ra
end

task.spawn(function()
    print("Bắt đầu Spam Space và Q...")
    while true do
        -- Tạo delay ngẫu nhiên cho mỗi vòng lặp
        local delay = rng:NextNumber(MIN_DELAY, MAX_DELAY)

        -- Thực hiện nhấn Space
        pressKey(Enum.KeyCode.Space)
        
        -- Nghỉ một chút siêu ngắn giữa 2 phím để mượt hơn
        task.wait(0.05) 
        
        -- Thực hiện nhấn Q
        pressKey(Enum.KeyCode.Q)

        -- Đợi hết thời gian delay trước khi lặp lại
        task.wait(delay)
    end
end)
