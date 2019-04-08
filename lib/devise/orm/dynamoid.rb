# frozen_string_literal: true

ActiveSupport.on_load(:dynamoid) do
  require 'orm_adapter/adapters/dynamoid'

  Dynamoid::Document::ClassMethods.send :include, Devise::Models
end
