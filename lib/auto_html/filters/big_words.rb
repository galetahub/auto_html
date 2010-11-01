AutoHtml.add_filter(:big_words).with(:length => 80, :tag => "span") do |text, options|  
  text.gsub(/\w+/) do |word|
    if word.size >= options[:length]
      word.scan(/\w{1,5}/).collect { |item| "<#{options[:tag]}>#{item}</#{options[:tag]}>" }.join
    else
      word
    end
  end
end
