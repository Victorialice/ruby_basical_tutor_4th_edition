def accumlator
  total = 0
  Proc.new do |x|
    total += x
  end
end

acc = accumlator
p acc.call(1)    #=&gt; 1
p acc.call(2)    #=&gt; 3
p acc.call(3)    #=&gt; 6
p acc.call(4)    #=&gt; 10
