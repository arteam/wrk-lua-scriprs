function read_cities()
  local cities = {}
  local amount = 0
  for line in io.lines("cities.csv") do
    local id, name = line:match("(.+),(.+)")
    amount = amount + 1
    if amount > 1 then
      cities[amount-1] = { name = name }
    end
  end
  return cities
end

counter = 1
base_path="/%s.json"
cities = read_cities()

function request()
  counter = counter + 1
  local position = counter%#cities
  local path = base_path:format(cities[position + 1].name)
  return wrk.format(nil, path)
end
