# frozen_string_literal: true

module Bakery
  ##
  # This class is a utility for creating Packs.
  class PackFactory
    ##
    # This method builds an array of packs from a +pack_config+ array.
    # The format of pack_config is:
    #
    #   pack_config = [
    #     { code: 'CODE', price: 9.99, quantity: 5}
    #   ]
    def build(pack_config)
      pack_config.map { |config| build_pack(config) }
    end

    private

    ##
    # This method builds a pack from a +config+ hash.
    def build_pack(config)
      Pack.new(
        code: config[:code],
        price: config[:price],
        quantity: config[:quantity]
      )
    end
  end
end
