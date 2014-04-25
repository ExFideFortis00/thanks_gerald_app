require 'spec_helper'

describe "home page functionality" do 
  it "will navigate to the homepage and show 'Hey Macerena'" do 
    visit '/'
    expect(page).to have_content 'Hey Macarena';
  end
end  

# describe "visiting the root" do
#   it "clicking hey Macarena'", js: true do 
#     visit '/'
#     page.find("h1", :text => "Hey Macarena").click
#     expect(page).to have_content 'Hey Gerald';
#   end
# end