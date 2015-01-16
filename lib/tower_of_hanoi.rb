

def move(num_disks, start, target, using)
  if num_disks == 1
    target << start.pop
  else
    move(num_disks - 1, start, using, target)
    target << start.pop
    move(num_disks - 1, using, target, start)
  end
end


def solve_hanoi_tower(a, b, c)
  move(a.length, a, c, b)
  [a, b, c]
end
