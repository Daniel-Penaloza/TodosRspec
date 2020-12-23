require "rails_helper"

feature "User creates todo" do
    scenario "Successfully" do
        visit root_path
        
        click_on "Add a new todo"
        fill_in 'Title', with: "Some title"
        click_on  "Submit"

        expect(page).to have_css ".todos li", text: "Some title"
    end
end