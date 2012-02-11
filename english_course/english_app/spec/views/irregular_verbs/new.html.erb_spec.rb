require 'spec_helper'

describe "irregular_verbs/new" do
  before(:each) do
    assign(:irregular_verb, stub_model(IrregularVerb,
      :italian_verb => "MyString",
      :present => "MyString",
      :past => "MyString",
      :past_participle => "MyString"
    ).as_new_record)
  end

  it "renders new irregular_verb form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => irregular_verbs_path, :method => "post" do
      assert_select "input#irregular_verb_italian_verb", :name => "irregular_verb[italian_verb]"
      assert_select "input#irregular_verb_present", :name => "irregular_verb[present]"
      assert_select "input#irregular_verb_past", :name => "irregular_verb[past]"
      assert_select "input#irregular_verb_past_participle", :name => "irregular_verb[past_participle]"
    end
  end
end
