require 'rails_helper'

feature "create a post" do

	scenario "" do
		visit new_post_path
		within(".new_post") do
			fill_in 'Title', with: "Test first Post"
			fill_in 'Body', with: "blah blah blah"
		end
		click_on 'Create Post' 
		expect(page).to have_content "Test first Post"
		expect(page).to have_content "blah blah blah"
	end

end