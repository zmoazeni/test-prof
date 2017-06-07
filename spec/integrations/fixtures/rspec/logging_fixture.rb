# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../../../../lib", __FILE__)
require_relative "../../../support/user"
require "test_prof/recipes/logging"

module Rails
  class << self
    attr_accessor :logger
  end
end

describe "User" do
  context "with log", :log do
    it "creates user" do
      expect(FactoryGirl.create(:user)).to be_valid
    end
  end

  context "without log" do
    it "destroys user" do
      user = FactoryGirl.create(:user)
      expect { user.destroy! }.to change(User, :count).by(-1)
    end
  end
end
