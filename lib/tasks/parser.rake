#     require 'rubygems'
# require 'nokogiri'
# require 'open-uri'
require 'mechanize'
# require 'pry'


namespace :parser do
  desc "TODO"
  task threepages_of_Hacker_news: :environment do

    base_url = 'https://news.ycombinator.com/'

    mainpage = Mechanize.new

    mainpage.get(base_url)


    @results = []
    items_list = mainpage.page.search('.itemlist')

    items_list.search('.athing').map do |item|
      # binding.pry
      post = item.search('td.title')[1].children[0]

      link = post.attributes['href'].value
      title = post.children.text
      author = item.next.search('.hnuser')[0].children.text

      puts title
      puts link
      puts author
      puts " "

    end

    # render :index


  end

end
