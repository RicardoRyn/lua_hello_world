-- 如果终端显示中文为乱码，则在终端执行`chcp 65001`

-- lua的8种类型
-- 1. nil， 类似于python中的None，在条件表达式中相当于false
-- 2. bool，true 或者 false
-- 3. number，双精度类型的实浮点数
-- 4. string，字符串
-- 5. table，表
-- 6. function，函数
-- 7. thread，协同线程
-- 8. userdata，用户定义数据
--
-- 内置全局变量, 下划线开头全大写字母

-- 字符串可以这样写
local str1 = "a"
local str2 = "b"
-- NOTE: 特殊的字符串定义方式
local str3 = [[
c
d
e
]]
print(str1)
print(str2)
print(str3)

-- 默认顶一顶的变量都是全局变量，局部变量需要用local关键字声明
-- NOTE: 全局变量一旦声明，在文件的任意位置都可以访问
local x = 3

local function foo()
  -- 定义一个全局变量
  Y = 5
  -- 定义一个局部变量
  local z = 8
  -- 访问一个局部变量
  print("x 表示的是" .. x) -- `..` 表示字符串拼接
end

-- 访问函数
foo()
print("Y 表示的是" .. Y)
-- print("z 表示的是"..z)  -- 访问失败
