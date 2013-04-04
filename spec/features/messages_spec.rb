require 'spec_helper'
require 'benchmark'

describe "Live Streaming" do
  it "tests performance", :js => true do

    n = ENV["TIMES"] ? ENV["TIMES"].to_i : 1000
    Benchmark.bm do |x|
      visit "/"
      fill_in :message_name, :with => "John"
      fill_in :message_content, :with => "A little test"

      x.report "speed test" do
        n.times do
          click_button "message_submit"
        end
      end
    end
  end
end
