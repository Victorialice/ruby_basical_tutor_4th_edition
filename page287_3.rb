require "date"

module Calendar
  WEEK_TABLE = [
    [99, 99, 99, 99, 99, 99,  1,  2,  3,  4,  5,  6,  7],
    [ 2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14],
    [ 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21],
    [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28],
    [23, 24, 25, 26, 27, 28, 29, 30, 31, 99, 99, 99, 99],
    [30, 31, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99],
  ]

  module_function

  def cal(year, month)
    first = Date.new(year, month, 1)       # 被指定的月的1号
    end_of_month = ((first &gt;&gt; 1) - 1).day  # 次月的1号的前1天
    start = 6 - first.wday                 # 表示在表格的哪个位置

    puts first.strftime("%B %Y").center(21)
    puts " Su Mo Tu We Th Fr St"
    WEEK_TABLE.each do |week|
      buf = ""
      week[start, 7].each do |day|
        if day &gt; end_of_month
          buf &lt;&lt; "   "
        else
          buf &lt;&lt; sprintf("%3d", day)
        end
      end
      puts buf
    end
  end
end

t = Date.today
Calendar.cal(t.year, t.month)
