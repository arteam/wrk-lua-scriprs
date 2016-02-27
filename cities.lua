local cities = {}
local amount = 0
for line in io.lines("./cities.csv") do
  local id, name = line:match("(.+),(.+)")
  amount = amount + 1
  if amount > 1 then
    cities[amount-1] = { name = name }
  end
end

for i=1, amount-1 do
  print(i, cities[i].name)
end
