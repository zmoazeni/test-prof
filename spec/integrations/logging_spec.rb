# frozen_string_literal: true

require "spec_helper"

describe "logging" do
  it "works with tags" do
    output = run_rspec('logging')

    expect(output).to match(/\ASELECT.+users.+\z/)
    expect(output).not_to match(/\ADELETE.+users.+\z/)
  end

  it "works with env var" do
    output = run_rspec('logging', env: { 'LOG' => '1' })

    expect(output).to match(/\ASELECT.+users.+\z/)
    expect(output).to match(/\ADELETE.+users.+\z/)
  end
end
