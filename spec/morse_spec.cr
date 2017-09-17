require "./spec_helper"

describe Morse do

  to_encode = "hello world, this youssef from the past."
  it "encode" do
    Morse.encode(to_encode).should eq(".... . .−.. .−.. −−− / .−− −−− .−. .−.. −.. −−..−− / − .... .. ... / −.−− −−− ..− ... ... . ..−. / ..−. .−. −−− −− / − .... . / .−−. .− ... − .−.−.−")
  end

  to_decode = ".... . .−.. .−.. −−− / .−− −−− .−. .−.. −.. −−..−− / − .... .. ... / −.−− −−− ..− ... ... . ..−. / ..−. .−. −−− −− / − .... . / .−−. .− ... − .−.−.−"
  it "decode" do
    Morse.decode(to_decode).should eq("hello world, this youssef from the past.")
  end
end
