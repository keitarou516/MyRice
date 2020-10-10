require 'mechanize'

agent = Mechanize.new
page = agent.get("http://www.okomeno-funakubo.com/contents/diagnosis/#diag01")
elements1 = page.search(".chart_area a")
elements2 = page.search(".situa_box a")

elements1.each do |ele|
  puts ele.inner_text
end

elements2.each do |ele|
  puts ele.inner_text
end
