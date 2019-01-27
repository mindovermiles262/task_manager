class AddIssueAndPullRequestIdsToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :github_issue_id, :integer
    add_column :tasks, :github_pull_request_id, :integer
  end
end
