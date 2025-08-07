-- lua中的数组索引是从1开始的，和python不同
-- 同一个数组的元素可以是任意类型的

-- 1. 数组，类似于python中的列表

local cities = { "北京", "上海", "广州" }
cities[4] = "深圳"
print(cities)    -- table: 00C5A680，这里打印的是内存地址
print(cities[0]) -- nil
print(cities[5]) -- nil
print()

for i = 1, 4 do
    print("第" .. i .. "个城市是" .. cities[i])
end
print()

local arr = { { 1, 2, 3 }, { "a", "b", "c" } }
for i = 1, 2 do
    for j = 1, 3 do
        print(arr[i][j])
    end
end
print()

-- 2. map，类似于python中的字典

local person = { name = "张三", age = 18, gender = "男" } -- 这里的key不用加引号
person["city"] = "上海" -- 这里的key需要加引号

print(person) -- table: 00C5A680，这里打印的是内存地址
print(name) -- nil

print(person.name) -- 不需要用引号
print(person.city)
print(person["age"]) -- 作为下标需要加引号
print(person["gender"])
print()


local a = "Ryn"
local b = 3
local c = 5

local rjx = {
    ["Ricardo " .. a] = true,
    [b + c] = "Hello world",
    age = 18,
    ["city"] = "Beijing"
} -- 用表达式作为key，创建map

if rjx["Ricardo Ryn"] then
    print("真")
else
    print("假")
end
print(rjx[8])
print(rjx.city)
print()


-- 3. 混合
-- map不会占据索引值

local tmp = { "张三", age = 18, "李四", city = "Beijing" }
print(tmp[1])   -- 张三
print(tmp[2])   -- 李四
print(tmp.age)  -- 18
print(tmp.city) -- Beijing
print()

local persons = {
    { name = "张三", age = 18 },
    { name = "李四", age = 19 },
    { name = "王五", age = 20 },
    { name = "赵六", age = 21 }
}
for i =1, 4 do
    print(persons[i].name .. ": " .. persons[i].age)
end
