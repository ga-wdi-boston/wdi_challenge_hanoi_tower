require 'byebug'


def move(disc, source, destination, spare)
  if disc == 1
    destination << source.pop
  else
    move(disc - 1, source, spare, destination)
    destination << source.pop
    move(disc - 1, spare, destination, source)
  end
end

def solve_hanoi_tower(a, bee, cee)
  move(a.length, a, cee, bee)
  [a, bee, cee]
end# your code here
