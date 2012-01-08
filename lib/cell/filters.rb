require "hooks"

module Cell
  module Filters
    def self.included(base)
      base.class_eval do
        include Hooks
        define_hook :before_filter
        define_hook :after_filter
      end
    end
    
    def process(*args)
      run_hook(:before_filter, *args)
      content = super
      run_hook(:after_filter, *args)
      content
    end
  end
end
