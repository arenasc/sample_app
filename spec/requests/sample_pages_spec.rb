require 'spec_helper'

describe "Sample pages" do

  describe "Sample page" do

    it "should have the h1 'Sample Page'" do
      visit '/sample_pages/sample'
      page.should have_selector('h1', :text => 'Sample Page')
    end

    it "should have the base title" do
      visit '/sample_pages/sample'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/sample_pages/sample'
      page.should_not have_selector('title', :text => '| Home')
    end
  end
end