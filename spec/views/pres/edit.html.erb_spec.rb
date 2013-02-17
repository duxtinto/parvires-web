require 'spec_helper'

describe "pres/edit" do
  before(:each) do
    @pre = assign(:pre, stub_model(Pre,
      :email => "MyString"
    ))
  end

  it "renders the edit pre form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pres_path(@pre), :method => "post" do
      assert_select "input#pre_email", :name => "pre[email]"
    end
  end
end
