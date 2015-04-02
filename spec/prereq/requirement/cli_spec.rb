describe Prereq::Requirement::CLI do
  describe 'initialization' do
    it "should succeed if a string argument is provided" do
      expect{Prereq::Requirement::CLI.new "which redis" }.not_to raise_error
    end
    it "should fail if an argument is not provided" do
      expect{Prereq::Requirement::CLI.new}.to raise_error
    end
  end

end
