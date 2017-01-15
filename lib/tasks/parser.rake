namespace :parser do
  desc "TODO"
  task threepages_of_Hacker_news: :environment do

    base_url = 'https://news.ycombinator.com/'

    mainpage = Mechanize.new

    mainpage.get(base_url)

    Post.delete_all

    3.times do

      items_list = mainpage.page.search('.itemlist')

      items_list.search('.athing').map do |item|

        record = item.search('td.title')[1].children[0]

        @news = Post.new
        @news.url = record.attributes['href'].value
        @news.title = record.children.text
        @news.author = item.next.search('.hnuser')[0].children.text unless item.next.search('.hnuser')[0].nil?

        @news.save
      end

      mainpage.page.link_with(text: 'More').click

    end

  end

end
