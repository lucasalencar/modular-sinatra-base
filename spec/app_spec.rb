require 'spec_helper'

describe "Application" do
	it "should view the index page" do
	  visit '/'
	  page.should have_content 'Sinatra base application'
	end
end