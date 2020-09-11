module Imdb
  class Connector
    SPACES_ERROR      = 'La solicitud contiene espacios'.freeze
    PUNCTIATION_ERROR = 'La solicitud contiene signos de puntuación'.freeze

    def initialize(query)
      @query = query
    end

    def movie
      simulate_request
    end

    def director
      simulate_request
    end

    private

    def simulate_request
      if @query.include?(' ')
        raise SpacesError, SPACES_ERROR
      end

      if @query.match?(/[.¡!¿?\\-]/)
        raise PunctuationError, PUNCTIATION_ERROR
      end

      sleep 0.5
      SecureRandom.uuid
    end
  end

  class SpacesError < StandardError; end
  class PunctuationError < StandardError; end
end
