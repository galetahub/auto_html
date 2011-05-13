# encoding: utf-8
require 'rails'
require 'auto_html'

module AutoHtml
  class Engine < ::Rails::Engine
    config.before_initialize do
      # Register built-in filters
      Dir["#{File.dirname(__FILE__)}/filters/*.rb"].sort.each do |path|
        require "auto_html/filters/#{File.basename(path, '.rb')}"
      end
    
      ActiveSupport.on_load :active_record do
        ActiveRecord::Base.send :include, AutoHtml::AutoHtmlFor
      end
    end
  end
end
