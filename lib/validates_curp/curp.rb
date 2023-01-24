# frozen_string_literal: true

module ValidatesCurp
  class Curp
    REGEX = /\A([A-Z][AEIOUX][A-Z]{2})([0-9]{2}[0-1][0-9][0-3][0-9])([MHX])([A-Z]{2})([BCDFGHJKLMNÑPQRSTVWXYZ]{3})([0-9A-Z][0-9])\z/i.freeze
    VALID_STATES = %w[AG BN BS CH CI CL CP CS DF DG GE GJ HD JA MC MR MX NA NL OA PU QE QI SI SL SO TA TB TL VC YU ZA NE].freeze

    def initialize(value)
      @value = value
    end

    def valid?
      return true if @value.blank?

      @value.match(REGEX)

      Regexp.last_match(0).present? && valid_date?(Regexp.last_match(2)) && valid_state?(Regexp.last_match(4))
    end

    private

    def valid_date?(birth_date)
      birth_date_century = birth_date[0..1].to_i

      year =
        if birth_date_century > current_century
          "#{last_century}#{birth_date_century}"
        else
          "#{current_century}#{birth_date_century}"
        end

      month = birth_date[2..3]
      day = birth_date[4..5]

      Date.parse("#{day}-#{month}-#{year}")

      true
    rescue Date::Error
      false
    end

    def valid_state?(state)
      VALID_STATES.include?(state)
    end

    def current_century
      Date.today.year.to_s[0..1].to_i
    end

    def last_century
      current_century - 1
    end
  end
end
