# encoding: utf-8
module AutoHtml
  module Base
    def self.add_filter(name, &block)
      AutoHtml::Builder.add_filter(name, &block)
    end

    def auto_html(raw, &proc)
      builder = AutoHtml::Builder.new(raw)
      builder.instance_eval(&proc)
    end
  end
end

