-- Fetch the target speed from refined concrete dynamically
local target_speed = 1.4 -- Default vanilla refined concrete backup
if data.raw["tile"]["refined-concrete"] then
    target_speed = data.raw["tile"]["refined-concrete"].walking_speed_modifier
end

-- Apply the speed to Stone Bricks (stone-path)
if data.raw["tile"]["stone-path"] then
    data.raw["tile"]["stone-path"].walking_speed_modifier = target_speed
end

-- Apply the speed to Standard Concrete (concrete)
if data.raw["tile"]["concrete"] then
    data.raw["tile"]["concrete"].walking_speed_modifier = target_speed
end