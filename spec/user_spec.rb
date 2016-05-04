describe User do
  it "adds an email to the database successfully" do
    User.create(:email, 'l@f.com')
  end
end