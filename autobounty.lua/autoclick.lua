    while true do
        -- random min / max mỗi vòng
        local delay = rng:NextNumber(minDelay, maxDelay)

        -- Giả lập bấm phím Space (Nhảy)
        VIM:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
        task.wait(0.05) -- Thời gian giữ phím
        VIM:SendKeyEvent(false, Enum.KeyCode.Space, false, game)

        task.wait(delay)
    end
