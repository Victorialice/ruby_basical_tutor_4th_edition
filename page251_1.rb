# encoding= utf-8
def wc(file)
  nline = nword = nchar = 0
  File.open(file){|io|
    io.each{|line|
      words = line.split(/\s+/).reject{|w| w.empty? }
      nline += 1
      nword += words.length
      nchar += line.length
    }
  }
  puts "lines=#{nline} words=#{nword} chars=#{nchar}"
end

wc(ruby基础教程（第4版）.html)

