# Time complexity: O(n)
# Space Complexity: O(n)

def newman_conway(num)
  solution = [1]
  raise ArgumentError, "Number must be 1 or greater" if num <1
  p(num, solution)

  string_solution = ""
  solution.each do |char|
    string_solution << "#{char.to_s} "
  end

  return string_solution[0...-1]
end

def p(n, s)
  return s[n-1] if s[n-1]
  
  if (n == 2) && !s[2-1]
    s[2-1] = 1
  else
    s[n-1] = p(p(n - 1, s), s) + p(n - p(n - 1, s), s)
  end

  return s[n-1]
end