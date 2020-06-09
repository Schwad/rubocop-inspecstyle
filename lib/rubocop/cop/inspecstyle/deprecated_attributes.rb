# frozen_string_literal: true

# TODO: when finished, run `rake generate_cops_documentation` to update the docs
module RuboCop
  module Cop
    module InSpecStyle
      #
      # @example DeprecatedAttributes: Do not use attributes
      #   # Attributes have been deprecated for inputs
      #
      #   # bad
      #   attribute('my_element', value: 10)
      #
      #   # good
      #   input('my_element', value: 10)
      #
      class DeprecatedAttributes < Cop
        # TODO: Implement the cop in here.
        #
        # In many cases, you can use a node matcher for matching node pattern.
        # See https://github.com/rubocop-hq/rubocop/blob/master/lib/rubocop/node_pattern.rb
        #
        # For example
        MSG = 'Use `#good_method` instead of `#bad_method`.'

        def_node_matcher :bad_method?, <<~PATTERN
          (send nil? :bad_method ...)
        PATTERN

        def on_send(node)
          return unless bad_method?(node)

          add_offense(node)
        end
      end
    end
  end
end
