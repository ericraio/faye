require 'spec_helper'

describe "Searches" do
  describe "GET /search" do

    context "checking to see if the status code is 200" do
      it "should return a successful page" do
        visit anime_search_path
        page.status_code.should be 200
      end
    end

    context "searching the page when you are from the root url" do
      before :each do
        visit root_url
        page.current_path.should == '/'
      end
      it "should return search with any results" do
        fill_in 'search', with: 'Bleach'
        click_on 'main-search-btn'
        page.current_path.should == '/search'
        page.should have_content('Search Results')
      end
    end


  end
end
