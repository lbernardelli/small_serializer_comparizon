# frozen_string_literal: true

module Blueprinter
  class UserSerializer < Blueprinter::Base
    identifier :id
    fields :login, :password
  end
end
