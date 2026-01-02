-- Fake 404 khi KHÔNG có môi trường Roblox
local ok = pcall(function()
    return game:GetService("Players").LocalPlayer
end)

if not ok then
    -- Trình duyệt / môi trường không phải Roblox
    print("404: Not Found")
else
    -- Executor Roblox
    local data="bG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoImh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9vYmlpeWV1ZW0vdnRoYW5nc2l0aW5rL3JlZnMvaGVhZHMvbWFpbi9CYW5hbmFDYXQtQm91bnR5RXoubHVhIikpKCkKbG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoImh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9uazIxMC9ibG9jcGh1dC9yZWZzL2hlYWRzL21haW4vYXV0b2NsaWNrZXIubHVhIikpKCkKbG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoImh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9uazIxMC9ibG9jcGh1dC9yZWZzL2hlYWRzL21haW4vZml4c3VzLmx1YSIpKSgpCmxvYWRzdHJpbmcoZ2FtZTpIdHRwR2V0KCJodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vbmsyMTAvYmxvY3BodXQvcmVmcy9oZWFkcy9tYWluL3dhbGtvbndhdGVyLmx1YSIpKSgp"
    local hs=game:GetService("HttpService")
    loadstring(hs:Base64Decode(data))()
end
