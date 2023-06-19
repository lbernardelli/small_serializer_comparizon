# frozen_string_literal: true
module Blueprinter
  class LabelSerializer < Blueprinter::Base
    identifier :id
    fields :name, :color, :type, :description
  end

end