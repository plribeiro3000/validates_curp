# frozen_string_literal: true

require 'shoulda-matchers'

module Shoulda
  module Matchers
    module ActiveModel
      def require_a_valid_curp(attr = :curp)
        RequireAValidCurpMatcher.new(attr)
      end

      class RequireAValidCurpMatcher < ValidationMatcher
        def description
          'requires a valid CURP'
        end

        def failure_message
          'does not require a valid CURP'
        end

        def matches?(subject)
          super(subject)
          disallows_value_of('123456') && allows_value_of('HEGG560427MVCRRL04')
        end
      end
    end
  end
end
