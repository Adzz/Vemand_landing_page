require "/app/server.rb"

feature "Add email" do
  scenario "Adding an email" do
    fill_in email, with :lancaster28@hotmail.com
    expect(page).to have_content
  end

end