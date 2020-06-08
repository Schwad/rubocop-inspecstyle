# frozen_string_literal: true

require 'rubocop'

require_relative 'rubocop/inspecstyle'
require_relative 'rubocop/inspecstyle/version'
require_relative 'rubocop/inspecstyle/inject'

RuboCop::Inspecstyle::Inject.defaults!

require_relative 'rubocop/cop/inspecstyle_cops'
