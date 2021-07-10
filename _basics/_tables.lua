local T = {
      4, 8, "x",
      ["title"] = "Lua",
      x = 3,
      ["the page"] = 5,
      [123] = 456,
      {4, 5, 6}
}

print( #T )

-- Basic Table Operation(s)

local T = { "b", "c", "d" }

--update entry
T[1] = "a"
T[10] = "j"

table.insert(T, "e")
table.insert(T, 2, "b")

for index, value in ipairs(T) do
      print(index, value)
end

T[3] = nil

table.remove(T, 3)

print(T)
print(#T)

local T = {[1]="a", [2]="b", [3]="c", [10]="j"}
print(table.concat(T, ", ", 2, 3))

local T = {2, 3, 4, 5}
table.move(T, 1, #a, 2)
T[1] = 1

local T = {"Jon", "Doe", "DoeDoe"}
local function comp(s1, s2)
      return string.sub(s1, 2, 2) > string.sub(s2, 2, 2)
end

table.sort(T, comp)
