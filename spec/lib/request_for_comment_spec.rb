require 'spec_helper'

describe "RequestForComment" do
  use_vcr_cassette "rfc"

  let :rfc do
    RequestForComment.new user: "bensheldon",
      repo: "request_for_comment",
      oauth_token: 'FAKETOKEN'
  end

  it "is initialized" do
    expect( rfc ).to be_an_instance_of(RequestForComment)
  end

  describe "get_pull_request" do
    it "returns a pull request" do
      puts rfc.post_comment('spec_test', "my comment")
    end
  end

  describe "comment_on_pr" do
    it "fetches a pull request ID from github corresponding to the branch"
    it "posts a comment to Pull Request"

    describe "option[:remove_prev] == true" do
      it "fetches a list of existing comments on the pull request"

      context "when a previous comment exists" do
        it "finds the ID of a previously posted comment"
        it "deletes the previously posted comments"
      end

      context "when there is no previous comment" do
        it "passes"
      end
    end
  end

end
