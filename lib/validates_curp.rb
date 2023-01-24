# frozen_string_literal: true

require 'active_model'
require 'validates_curp/curp_validator'
require 'validates_curp/require_a_valid_curp_matcher' if defined?(::Shoulda)

module ValidatesCurp
  autoload :Curp, 'validates_curp/curp'
end
