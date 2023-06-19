# frozen_string_literal: true

module Blueprinter
  class IssueSerializer < Blueprinter::Base
    identifier :id
    fields :number, :title, :description
    association :labels, blueprint: ::Blueprinter::LabelSerializer
    association :user, blueprint: ::Blueprinter::UserSerializer
  end
end
