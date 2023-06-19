# frozen_string_literal: true
module FastJsonApi
  class IssueSerializer
    include FastJsonapi::ObjectSerializer

    attributes :id, :number, :title, :description
    has_many :labels
    belongs_to :user
  end
end