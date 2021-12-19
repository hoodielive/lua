--- This is a single comment.
--[[
--      This is a multiline comment.
--]]

var = 10 --> global, as all variables are unless explicitly stated.
print("Global var: ", var) --> 10

do
      local var = 20 -- local
      print("Local var: ", var) --> 20
end

print("Global var: ", var) --> 10

-- types
print(type ("hello"))
print(type(10.4*3))
print(type({ 1, 2, 3 }))
print(type(print))
print(type(true))
print(type(nil))

--Relational Operators
local a, b = 20, 4

print(a == b)
print(a ~= b)
print(a > b)
print(a >= b)
print(a < b)
print(a <= b)

--Logical Operators
print(true and 10)
print(10 and true)
print(false and 10)
print(false or 10)
print(nil and 10)
print(nil or 10)
print(false and nil)
print(false and not(nil))

--Strings
local a = 'there is a "quote" inside this string'
local b = [[ This is a 
      multiline string ]]

local c = "this is a string with \t escape characters \\"

print(string.upper("The")) --> THE
print(string.lower("ADT"))
print(string.len("a b c"))
print(string.find("This is", "is"))
print(string.sub("abcd", 2, 3))
print(string.gsub("pen", "e", "i"))
print(string.rep("ab", 2))
print("a" .. ": " .. "b")
print(string.reverse("abcd"))
print(string.char(98))
print(string.byte("abc", 2))

local a, b, c = "string", 1000, 2.718
print(string.format("String: %s", a))
print(string.format("Preceding with blanks: %10s", a))
print(string.format("Preceding with zeros: %010d", b))
print(string.format("Signed integer: %d", b))
print(string.format("Float: %.2f", c))
print(string.format("Scientific Notation: %.0e", b))

--Control Structures
local num = math.random(1, 100)

if (num < 25) then
      print(string.format("%d < 25", num))
elseif (num < 50) then
      print(string.format("%d < 50", num))
else
      print(string.format("%d >= 50", num))
end

local i = 1
while i <= 5 do
      io.write(i, " ")
      i = i + 1
end

local i = 1

repeat
      io.write(i, " ")
      i = i + 1
until i > 5

for i = 1, 5, 1 do 
      io.write(i, " ")
end

local min, max = 1, 100
local secret = math.random(min, max)

while true do
      io.write(string.format("Guess a number from %d to %d: ", min, max))
      local guess = io.read("*n")
      if guess == secret then
            print("Correct!")
            break
      else
            if guess > secret then
                  print("The guess is too high!")
            else
                  print("The guess is too low!")
            end
      end
end


