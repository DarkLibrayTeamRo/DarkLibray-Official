local DarkLibrary = {}

function DarkLibrary.CreateButton(name, text, parent, position, size)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Text = text
    button.Parent = parent
    button.Position = position or UDim2.new(0.5, 0, 0.5, 0)
    button.Size = size or UDim2.new(0, 200, 0, 50)
    button.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
    return button
end

function DarkLibrary.CreateLabel(name, text, parent, position, size)
    local label = Instance.new("TextLabel")
    label.Name = name
    label.Text = text
    label.Parent = parent
    label.Position = position or UDim2.new(0.5, 0, 0.5, 0)
    label.Size = size or UDim2.new(0, 200, 0, 50)
    label.BackgroundTransparency = 1
    label.TextColor3 = Color3.new(1, 1, 1)
    return label
end

function DarkLibrary.CreateToggle(name, text, parent, position, size)
    local toggle = Instance.new("TextButton")
    toggle.Name = name
    toggle.Text = text
    toggle.Parent = parent
    toggle.Position = position or UDim2.new(0.5, 0, 0.5, 0)
    toggle.Size = size or UDim2.new(0, 200, 0, 50)
    toggle.Style = Enum.ButtonStyle.RobloxRoundDefaultButton

    local active = false
    local event = Instance.new("BindableEvent")
    
    toggle.MouseButton1Click:Connect(function()
        active = not active
        event:Fire(active)
    end)

    return toggle, event.Event
end

return DarkLibrary
