# frozen_string_literal: true

class User
  include ActiveModel::Model

  attr_accessor :curp, :register, :name

  validates :curp, curp: true
  validates :register, curp: true
end
