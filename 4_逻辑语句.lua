-- 1. 判断语句
-- lua中，0是 真 ！！！
-- lua中，0是 真 ！！！
-- lua中，0是 真 ！！！

if 0 then
    print("0 是真")
else
    print("0 是假")
end
print()

local a = -4
if a > 0 then
    print("a 大于 0")
elseif a == 0 then
    print("a 等于 0")
else
    print("a 小于 0")
end
print()

-- 2. 循环语句

-- 2.1 while ... do
local a = 3
while a < 6 do
    print(a)
    a = a + 1
end
print()

-- 2.2 repeat ... until
local a = 3
repeat
    print(a)
    a = a + 1
until a > 6 -- 一旦判断为真时就跳出循环
print()

-- 2.3 数值 for ... do
for i = 0, 3 do -- start, end, step (首尾都包含)
    print(i)
end
print()

for i = 0, 10, 2 do -- start, end, step (首尾都包含)
    print(i)
    if i > 5 then
        break
    end
end
print()

-- 2.4 泛型 for ... do
-- 略


-- 3. goto
-- lua 5.2 才支持goto
-- goto语句，能不用，尽量不用，会使代码逻辑混乱

-- local function foo(a)
--     ::flag::
--     print("=========")
--     if a > 0 then
--         print(a)
--         a = a - 1
--         goto flag
--     end
-- end
-- foo(5)
-- print()
