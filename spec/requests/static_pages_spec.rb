require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Sample App') }
    # it "should have the h1 'Sample App'" do
    #   visit root_path
    #   #visit '/static_pages/home'
    #   page.should have_selector('h1', :text => 'Sample App')
    # end
    
    it "should not have a custom page title" do
      #visit root_path
      #visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end

  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it "should have the content 'Help'" do
      #visit help_path
      #visit '/static_pages/help'
      expect(page).to have_content('Help')
   	end

   	# it "should have the title 'Help'" do
    #   #visit help_path
    #   visit '/static_pages/help'
    #   #expect(page).to have_title("#{base_title} | Help")
    #   page.should have_selector('title',
    #                     text: "Help")
    # end

  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it "should have the content 'About Us'" do
      #visit about_path
      #visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    # it "should have the title 'About Us'" do
    #   #visit about_path
    #   visit '/static_pages/about'
    #   #expect(page).to have_title("#{base_title} | About Us")
    #   page.should have_selector('title',
    #                 text: "About Us")
    # end

  end

describe "Contact page" do
  before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    # it "should have the h1 'Contact'" do
    #   #visit contact_path
    #   #visit '/static_pages/contact'
    #   page.should have_selector('h1', text: 'Contact')
    # end

    # it "should have the title 'Contact'" do
    #   #visit contact_path
    #   visit '/static_pages/contact'
    #   #expect(page).to have_title("#{base_title} | Contact")
    #   page.should have_selector('title',
    #                 text: "Contact")
    # end

  end
  

end

=begin
require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Sample App') }
    #it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help page" do
    before { visit help_path }

    #it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
    
  end

  describe "About page" do
    before { visit about_path }

    #it { should have_selector('h1',    text: 'About') }
   # it { should have_selector('title', text: full_title('About Us')) }
    
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
   # it { should have_selector('title', text: full_title('Contact')) }
    
  end
end

=end
