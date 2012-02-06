require "spec_helper"

describe "routes to irregural verbs" do
  it "should route with get" do
    { :get => "/irregular_verbs" }.should be_routable
  end
end