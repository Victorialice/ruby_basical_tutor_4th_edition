
#require "debugger"
def dice
  return rand(6) + 1
end

def dice10
  ret = 0

#debugger
  10.times do 
    ret += dice
  end
  ret
end
 p dice10
