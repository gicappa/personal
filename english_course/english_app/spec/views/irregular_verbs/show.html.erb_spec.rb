require 'spec_helper'

describe "irregular_verbs/show" do
  before(:each) do
    @irregular_verb = assign(:irregular_verb, stub_model(IrregularVerb,
      :italian_verb => "Italian Verb",
      :present => "Present",
      :past => "Past",
      :past_participle => "Past Participle"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Italian Verb/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Present/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Past/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Past Participle/)
  end
end
