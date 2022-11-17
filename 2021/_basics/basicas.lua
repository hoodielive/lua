
-- String magic.
name = "Lawrence"
io.write("Size of string ", #name, "\n")

-- Precision.
floatPrecision = 1.99999999999999 + 0.00000000000005
io.write(floatPrecision)

-- Long String.
longString = [[
I am avery long 
string that goes
on and on and on
]]

io.write(longString, "\n")
longString = longString .. name

-- Booleans
isAbleToDrive = true
io.write(type(IsAbleToDrive), "\n")

-- nil
io.write(type(madeUpVar), "\n")

-- Relational > < >= <= == ~= (not equal)
-- logical and or not
age = 13
if age < 16 then
  io.write("You can go to school", "\n")
  local localVar = 10
elseif (age <= 16) and (age < 18) then
  io.write("You can drive", "\n")
else 
  io.write("You can vote.", "\n")
end

print(localVar)

for i = 0, 9 do 
  aMultiTable[i] = {  }
  for j = 0, 9 do
    aMultiTable[i][j] = tostring(i) ..  tostring(j)
  end
end

function getSum(num1, num2)
  return num1 + num2
end

print(string.format("5 + 2 = %d"), getSum(5, 2))

function splitString(theString)
  stringTable = {  }
  local i = 1

  for str in string.gmatch(theString, "[^%s]+") do
    stringTable[i] = str
    i = i + 1
  end

  return stringTable, i 

splitStringTable, numOfStr = splitStr("The Turtle")

