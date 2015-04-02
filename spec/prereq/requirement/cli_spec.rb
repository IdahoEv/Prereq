describe Prereq::Requirement::CLI do
  describe 'initialization' do
    it "should succeed if a string argument is provided" do
      expect{Prereq::Requirement::CLI.new "which redis" }.not_to raise_error
    end
    it "should fail if an argument is not provided" do
      expect{Prereq::Requirement::CLI.new}.to raise_error
    end
  end

  describe :run do
    it "on a successful command, should return :succeeded" do
      req = Prereq::Requirement::CLI.new "exit 0"
      expect(req.run).to eql(:succeeded)
    end
    it "on a failing command, should return :failed" do
      req = Prereq::Requirement::CLI.new "exit 1"
      expect(req.run).to eql(:failed)
    end
  end

  describe :status do
    it "should be :not_run on a new requirement" do
      req = Prereq::Requirement::CLI.new "exit 0"
      expect(req.status).to eql(:not_run)
    end

    it "after a successful run, should return :succeeded" do
      req = Prereq::Requirement::CLI.new "exit 0"
      req.run
      expect(req.status).to eql(:succeeded)
    end
    it "after a failing run, should return :failed" do
      req = Prereq::Requirement::CLI.new "exit 1"
      req.run
      expect(req.status).to eql(:failed)
    end
  end

end
