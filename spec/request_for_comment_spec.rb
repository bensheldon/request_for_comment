require 'spec_helper'

describe "RequestForComment" do
  describe "initialize" do
    it "requires a github user/repo"
    it "requires a branch to comment upon"
    it "requires a comment"
    it "has the option to remove a previous comment on the PR"
  end

  describe "comment_on_pr" do
    it "fetches a pull request ID from github corresponding to the branch"
    it "posts a comment to Pull Request"

    describe "option[:remove_previous] == true" do
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
