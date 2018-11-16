# require libraries/modules here
require "nokogiri"
require "pry"


def create_project_hash
  html = File.read('fixtures/kickstarter.html')
 
  kickstarter = Nokogiri::HTML(html)
  
  projects = {}


  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text


projects[title] = {}
projects[title][:image_link] = project.css(".projectphoto-little").attr("src").value
#
    #:image_link => ,
    #:description => ,
    #:location => 
    #:percent_funded => 
  #},

  end 
end

