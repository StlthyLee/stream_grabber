require File.join(File.dirname(__FILE__), *%w[test_helper])

class StreamGrabberTest < Test::Unit::TestCase
  context "Multiplexing the streams" do
    setup do
      @results = StreamGrabber.grab
    end

    should "show the most recent results" do
      timestamps = @results.first(5).map{ |r| r[0] }
      assert_equal expected_timestamps, timestamps
    end
  end

  def expected_timestamps
    [1287353685, 1287351412, 1287342471, 1287340078, 1287328637]
  end
end