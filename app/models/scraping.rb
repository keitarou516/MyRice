class Scraping
  def self.rice_name
    agent = Mechanize.new
    page = agent.get("http://www.okomeno-funakubo.com/contents/diagnosis/#diag01")
    elements1 = page.search(".chart_area a")
    elements2 = page.search(".situa_box a")

    elements1.each do |ele|
      name = ele.inner_text
      rice = Rice.where(name: name).first_or_initialize
      rice.save
    end

    elements2.each do |ele|
      name = ele.inner_text
      rice = Rice.where(name: name).first_or_initialize
      rice.save
    end
  end
end

