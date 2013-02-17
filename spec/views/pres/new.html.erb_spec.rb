require 'spec_helper'

describe "pres/new" do
  before(:each) do
    assign(:pre, stub_model(Pre,
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new pre form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pres_path, :method => "post" do
      assert_select "input#pre_email", :name => "pre[email]"
    end
  end
end
