require 'lita'

module Lita
  module Handlers
    class Clever < Handler
      route(/clever/, :clever, command: true, help: {
        'clever' => 'Initializes clever.'
      })

      def self.default_config(handler_config)
      end

      def clever(response)
        response.reply response
      end
    end

    Lita.register_handler(Clever)
  end
end
