# frozen_string_literal: true
module Panko
  class UserSerializer < Panko::Serializer
    attributes :id, :login, :password
  end
end
