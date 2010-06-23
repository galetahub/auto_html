# encoding: utf-8
require 'auto_html'

module AutoHtml
  if defined? Rails::Railtie
    require 'rails'
    class Railtie < Rails::Railtie
      initializer "auto_html.initialization" do
        ActiveSupport.on_load :active_record do
          AutoHtml::Railtie.insert
        end
      end
    end
  end

  class Railtie
    def self.insert
      # Register built-in filters
      Dir["#{File.dirname(__FILE__) + '/auto_html/filters'}/**/*"].each do |filter|
        require "#{filter}"
      end

      ActiveRecord::Base.send :include, AutoHtml::AutoHtmlFor
    end
  end
end
