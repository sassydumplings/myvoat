require 'rails_helper'

describe Post do
  describe "associations" do
  	it { is_expected.to have_many(:comments) }
  end
	
end