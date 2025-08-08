-- 函数也有全局函数和局部函数，默认定义的都为全局函数，local定义的为局部函数
-- lua中的函数以function 关键字开头，可以没有返回值，也可以有多个返回值

-- 1. 固定参数函数
local function foo(a, b)
	print(a, b)
end

-- 不传参
foo()        -- 输出: nil nil
-- 传一个参数
foo(1)       -- 输出: 1 nil
-- 传两个参数
foo(1, 2)    -- 输出: 1 2
-- 传三个参数
foo(1, 2, 3) -- 输出: 1 2

-- 2. 可变参数函数
local function bar(...)
	local a, b = ...
	print(a, b)
end

print()
-- 不传参
bar()        -- 输出: nil nil
-- 传一个参数
bar(1)       -- 输出: 1 nil
-- 传两个参数
bar(1, 2)    -- 输出: 1 2
-- 传三个参数
bar(1, 2, 3) -- 输出: 1 2

local function aha(...)
	print(...)
end

print()
aha(1, 2, 3) -- 输出: 1 2 3

-- 3. 函数返回多个值
local function calc(a, b)
	local sum = a + b
	local mul = a * b
	return sum, mul
end

print()
local result1, result2 = calc(1, 2)
print(result1, result2)

-- 4. 函数作为参数
-- 作为参数的函数可以是定义好的函数，也可以是匿名函数

local function sum(a, b)
	return a + b
end

local function rjx(a, b, func)
	local result = func(a, b)
	print("结果是：" .. result)
end

print()
rjx(1, 2, sum)
rjx(1, 2, function(a, b)
	return a * b
end) -- 匿名函数
