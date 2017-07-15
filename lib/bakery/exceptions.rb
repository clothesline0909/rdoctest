# frozen_string_literal: true

module Bakery
  ##
  # This exception is raised when the ReceiptBuilder.build_line method is
  # passed objects with different +codes+.
  class InconsistentCodes < StandardError; end

  ##
  # This exception is raised when the OrderParser#parse method is passed an
  # invalid +filepath+.
  class InvalidFilepath < StandardError; end

  ##
  # This exception is raised when the OrderParser#parse method is given an
  # order with an incorrect format.
  class InvalidOrderFormat < StandardError; end

  ##
  # This exception is raised when the PackFactory#build method is passed an
  # invalid array +pack_config+.
  class InvalidPackConfig < StandardError; end
end
