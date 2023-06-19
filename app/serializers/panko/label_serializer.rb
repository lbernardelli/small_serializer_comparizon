# frozen_string_literal: true
module Panko
  class LabelSerializer < Panko::Serializer
    attributes :id, :name, :color, :type, :description
  end
end