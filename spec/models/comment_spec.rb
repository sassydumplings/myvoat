require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "associations" do
  	it { is_expected.to belong_to(:commentable) }
  	it { is_expected.to have_many(:comments) }
  end
end
