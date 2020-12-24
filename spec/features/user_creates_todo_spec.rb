require "rails_helper"

feature "User creates todo" do
    scenario "Successfully" do
        sign_in
        create_todo("Some title")
        expect(page).to display_todo "Some title"
    end
end