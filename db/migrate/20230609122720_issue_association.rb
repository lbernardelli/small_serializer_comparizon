class IssueAssociation < ActiveRecord::Migration[7.0]
  def change
    add_reference :issues, :user, index: true

    add_reference :labels, :issue, index: true
  end
end
