# encoding = utf-8
s = "正则表达式真难啊，怎么这么难懂！"
puts s.gsub(/难懂/, "易懂").gsub(/难/, "简单")
