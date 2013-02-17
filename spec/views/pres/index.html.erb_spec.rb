require 'spec_helper'

describe "pres/index" do
  before(:each) do
    assign(:pres, [
      stub_model(Pre,
        :email => "Email"
      ),
      stub_model(Pre,
        :email => "Email"
      )
    ])
  end

  it "renders a list of pres" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
