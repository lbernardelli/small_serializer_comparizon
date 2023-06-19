# frozen_string_literal: true

module FastJsonApi
  class UserSerializer
    include FastJsonapi::ObjectSerializer

    attributes :login, :email, :password
  end
end
