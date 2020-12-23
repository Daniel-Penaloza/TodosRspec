require "rails_helper"

feature "User creates todo" do
    scenario "Successfully" do
        sign_in
        
        click_on "Add a new todo"
        fill_in 'Title', with: "Some title"
        click_on  "Submit"

        expect(page).to have_css ".todos li", text: "Some title"
    end
end