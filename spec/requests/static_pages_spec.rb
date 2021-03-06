require 'spec_helper'

describe "Static pages" do

	describe "Home page" do

    it "should have the content 'Test App'" do
    	visit '/static_pages/home'
			page.should have_content('Sample App')
    end
  end

	describe "Help page" do
		it "Should have the content 'Help'" do
			visit '/static_pages/help'
			page.should have_content('Help')
		end
	end

	describe "About page" do
		it "Should have the content 'About'" do
			visit '/static_pages/about'
			page.should have_content('About')
		end
	end

	it "should have the right title" do
  	visit '/static_pages/home'
  	page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | Home")
	end
end
