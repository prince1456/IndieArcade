require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :company_name => "Company Name",
        :company_logo => "Company Logo",
        :website => "Website",
        :twitter => "Twitter",
        :admin => false,
        :approved_user => false,
        :number_of_employees => 2,
        :email => "Email",
        :password_digest => "Password Digest"
      ),
      User.create!(
        :company_name => "Company Name",
        :company_logo => "Company Logo",
        :website => "Website",
        :twitter => "Twitter",
        :admin => false,
        :approved_user => false,
        :number_of_employees => 2,
        :email => "Email",
        :password_digest => "Password Digest"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company Logo".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
  end
end
