require "spec_helper"

describe BookReturnedNotice do
  describe "bookreturned" do
    let(:mail) { BookReturnedNotice.bookreturned }

    it "renders the headers" do
      mail.subject.should eq("Bookreturned")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
