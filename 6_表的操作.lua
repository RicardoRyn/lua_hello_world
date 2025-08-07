local emp = {
  "北京",
  name = "张三",
  age = 23,
  "上海",
  depart = "销售部",
  "广州",
  "深圳",
}

-- 表的操作函数，只对数组有效

-- 1. tabel.concat
print(table.concat(emp))            -- 北京上海广州深圳
-- NOTE: 常用来查看table中的内容
print(table.concat(emp, ","))       -- 北京,上海,广州,深圳
print(table.concat(emp, ",", 2))    -- 上海,广州,深圳
print(table.concat(emp, ",", 2, 3)) -- 上海,广州

-- 2. table.unpack
-- lua 5.1不支持该功能
-- print(table.unpack(emp)) -- 北京 上海 广州 深圳
-- print(table.unpack(emp, 2, 3)) -- 上海 广州
-- a, b, c, d = table.unpack(emp)

-- 3. table.pack
-- t = table.pack("apple", "banana", "peach")  -- 返回的table有一个n属性，表示元素的数量
-- print(table.concat(t, ",")) -- apple,banana,peach
-- t.n -- 3,意味着有3个元素

-- 3. table.maxn
print(table.maxn(emp))  -- 4


emp[8] = "天津"
print(table.maxn(emp))  -- 8
print(table.concat(emp, ","))  -- 北京,上海,广州,深圳。不会输出天津，因为原本只有4个数组元素，然后指定第8个为天津，没有连续，所以不会输出。但是如果改8为5,就会打印出“天津”
