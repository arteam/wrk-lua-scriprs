function binary_search(a, symbol)
  if(#a == 0) then
    return -1
  end
  local left = 1
  local right = #a
  while (left <= right) do
    local m = math.floor((left + right)/2)
    if(a[m] == symbol) then
      return m
    end
    if(a[m] < symbol) then
      left = m + 1; 
    else
      right = m - 1;
    end
  end
  return -1
end

local array = {"a", "b", "c", "d", "e"}
print(binary_search(array, "c"))
print(binary_search(array, "d"))
print(binary_search(array, "b"))
print(binary_search(array, "a"))
print(binary_search(array, "e"))
print(binary_search(array, "h"))
