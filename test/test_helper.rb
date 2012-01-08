require 'rubygems'

# wycats says...
require 'bundler'
Bundler.setup
require 'test/unit'
require 'minitest/spec'

require 'rails' # FIXME: make cells not depend on Rails.

require 'cells'
module ActionController::RequestForgeryProtection # FIXME: make that optional in cell/rails, man!
end

require 'cell/rails'
require 'cells-filters'

# FIXME: make caching not depend on AC.
class ActionController::Base
  def self.cache_configured?
    false
  end
  def self.logger(*)
  end
end
