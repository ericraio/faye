require 'spec_helper'

describe "Episodes" do
  describe "GET /episodes/:id" do
    it "should visit a successful episode show page" do
      @episode = FactoryGirl.create(:episode)
      visit episode_path(@episode)
      page.should have_content('Test')
    end
  end
end
