require "kmj/version"
require "open-uri"
require "nokogiri"

module Kmj
  class Parser
    def initialize(url)
      @url = url
    end
    def parse
      list = Nokogiri::HTML(open(url))
      list = list.css('div.vpl')
      File.open("result.txt", "w") do |file|
        list.css("a").each do |a|
          link = a.attr('href')
          if link.include?("ed2k://") || link.include?("thunder://")
            file.puts link
          end
        end
      end

      system "pbcopy < result.txt"
    end


  end
end
