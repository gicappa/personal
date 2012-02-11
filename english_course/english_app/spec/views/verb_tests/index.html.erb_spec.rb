require 'spec_helper'

describe "verb_tests/index" do
  before(:each) do
    assign(:verb_tests, [
      stub_model(VerbTest,
        :index => "Index",
        :show => "Show"
      ),
      stub_model(VerbTest,
        :index => "Index",
        :show => "Show"
      )
    ])
  end

  it "renders a list of verb_tests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Index".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Show".to_s, :count => 2
  end
end
