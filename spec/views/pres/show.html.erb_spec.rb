require 'spec_helper'

describe "pres/show" do
  before(:each) do
    @pre = assign(:pre, stub_model(Pre,
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end
