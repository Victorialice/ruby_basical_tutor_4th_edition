def my_collect(obj, &amp;block)
  buf = []
  obj.each do |elem|
    buf &lt;&lt; block.call(elem)
  end
  buf
end

ary = my_collect([1,2,3,4,5]) do |i|
  i * 2
end

p ary  #=&gt; [2, 4, 6, 8, 10]
