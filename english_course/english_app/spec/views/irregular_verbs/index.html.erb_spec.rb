require 'spec_helper'

describe "irregular_verbs/index" do
  before(:each) do
    assign(:irregular_verbs, [
      stub_model(IrregularVerb,
        :italian_verb => "Italian Verb",
        :present => "Present",
        :past => "Past",
        :past_participle => "Past Participle"
      ),
      stub_model(IrregularVerb,
        :italian_verb => "Italian Verb",
        :present => "Present",
        :past => "Past",
        :past_participle => "Past Participle"
      )
    ])
  end

  it "renders a list of irregular_verbs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Italian Verb".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Present".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Past".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Past Participle".to_s, :count => 2
  end
end
