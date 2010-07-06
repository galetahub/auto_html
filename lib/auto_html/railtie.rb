# encoding: utf-8
require 'auto_html'

module AutoHtml
  if defined? Rails::Railtie
    require 'rails'
    class Railtie < Rails::Railtie
      # Register built-in filters
      Dir["#{File.dirname(__FILE__)}/filters/*.rb"].sort.each do |path|
        require "auto_html/filters/#{File.basename(path, '.rb')}"
      end
      
      config.after_initialize do
        ActiveSupport.on_load :active_record do
          ActiveRecord::Base.send :include, AutoHtml::AutoHtmlFor
        end
      end
    end
  end
end
