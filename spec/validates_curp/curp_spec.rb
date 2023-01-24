# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ValidatesCurp::Curp do
  it 'accepts HEGG560427MVCRRL04' do
    expect(ValidatesCurp::Curp.new('HEGG560427MVCRRL04')).to be_valid
  end

  it 'accepts ZAZD801124MBSYQN13' do
    expect(ValidatesCurp::Curp.new('ZAZD801124MBSYQN13')).to be_valid
  end

  it 'accepts RUNO390705HSLPTC02' do
    expect(ValidatesCurp::Curp.new('RUNO390705HSLPTC02')).to be_valid
  end

  it 'rejects IMS120607120' do
    expect(ValidatesCurp::Curp.new('IMS120607120')).not_to be_valid
  end

  it 'rejects KAOB750230MASLHJ07' do
    expect(ValidatesCurp::Curp.new('KAOB750230MASLHJ07')).not_to be_valid
  end

  it 'rejects EOMR330613FDFPKT08' do
    expect(ValidatesCurp::Curp.new('EOMR330613FDFPKT08')).not_to be_valid
  end

  it 'rejects YOOR280801HXXLTK07' do
    expect(ValidatesCurp::Curp.new('YOOR280801HXXLTK07')).not_to be_valid
  end

  it 'rejects EIMV310211MQRPKT1X' do
    expect(ValidatesCurp::Curp.new('EIMV310211MQRPKT1X')).not_to be_valid
  end

  it 'rejects L6NF640805MYNTNN10' do
    expect(ValidatesCurp::Curp.new('L6NF640805MYNTNN10')).not_to be_valid
  end

  it 'rejects MOJL020101HCLKWMXY09' do
    expect(ValidatesCurp::Curp.new('MOJL020101HCLKWMXY09')).not_to be_valid
  end

  it 'accepts blank string' do
    expect(ValidatesCurp::Curp.new('')).to be_valid
  end

  it 'accepts nil' do
    expect(ValidatesCurp::Curp.new(nil)).to be_valid
  end
end
