# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Shoulda::Matchers::ActiveModel::RequireAValidCurpMatcher do
  subject { User.new }

  it { is_expected.to require_a_valid_curp(:register) }
  it { is_expected.to require_a_valid_curp }
  it { is_expected.not_to require_a_valid_curp(:name) }
end
