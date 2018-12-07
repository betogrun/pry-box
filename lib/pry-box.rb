require 'pry'
require 'pry-inline'
require 'awesome_print'

if RUBY_VERSION < '2.2'
  require 'pry-debugger'
  require 'pry-stack_explorer'
else
  require 'pry-byebug'
end

require 'pry-box/version'

module PryBox
end
