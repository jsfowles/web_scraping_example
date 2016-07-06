namespace :scrape do
  desc "Scrape all cellphone data from amazon"
  task amazon_cellphones: :environment do
    agent = Mechanize.new
    # Get the homepage
    page = agent.get('https://www.amazon.com')
    # find the search form
    search_form = page.forms.first
    
    search_form['field-keywords'] = 'Cellphones'
    binding.pry
  end

end
