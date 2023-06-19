# frozen_string_literal: true
module Panko
  class IssueSerializer < Panko::Serializer
    attributes :id, :number, :title, :description
    has_many :labels, serializer: LabelSerializer
    has_one :user, serializer: UserSerializer
  end
end