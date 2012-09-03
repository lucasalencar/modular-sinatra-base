require 'spec_helper'

describe "Application" do
	it "should view the index page" do
	  get '/'

    # last_response.should eql('http://localhost/')
	  last_response.should be_ok
	end
end