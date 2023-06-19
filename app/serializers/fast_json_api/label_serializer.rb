# frozen_string_literal: true
module FastJsonApi
  class LabelSerializer
    include FastJsonapi::ObjectSerializer

    attributes :name, :color, :type, :description
  end
end
