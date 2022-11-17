-- Defines a factorial.

function fact(n) -- 5
  if n == 0 then 
    return 1
  else
    return n * fact(n - 1)
  end
end

print("Enter a number: ")
a = io.read("*n")
print(fact(a))
