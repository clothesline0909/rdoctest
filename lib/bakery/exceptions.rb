# frozen_string_literal: true

module Bakery
  ##
  # The exception is raised when the OrderParser#parse method is passed an
  # invalid filepath.
  class InvalidFilepath < StandardError; end

  ##
  # This exception is raised when the OrderParser#parse method is given an
  # order with an incorrect format.
  class InvalidOrderFormat < StandardError; end

  ##
  # This exception is raised when the PackFactory#build method is passed an
  # invalid array of packs' configuration.
  class InvalidPackConfig < StandardError; end
end
