require_relative '../lib/scrap2'

describe 'Belle hash de web scraping' do
    # ____________________
  it 'Searching Hash values from web scraping' do

    expect({a: 1}).to have_key(:a)  
    expect({a: 1}).to have_value(1)

  end
end