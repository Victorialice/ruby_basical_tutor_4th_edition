to_class = :class.to_proc
p to_class.call("test")    #=&gt; String
p to_class.call(123)       #=&gt; Fixnum
p to_class.call(2 ** 100)  #=&gt; Bignum
