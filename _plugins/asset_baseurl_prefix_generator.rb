require 'nokogiri'

module Jekyll
  class AssetBaseurlPrefixGenerator < Generator
    def generate(site)
      # Check page have html extension
      site.pages.each do |page|
        if page.output_ext != ".html"
          next
        end

        content = page.output
        doc = Nokogiri::HTML(content)

        # If relative implementation is required for another tags, add below.
        doc.css("img").each do |img|
          src = img["src"]
          if src.start_with?("/")
            img["src"] = "{{ site.baseurl }}#{src}"
          end
        end
        
        page.output = doc.to_html
      end
    end
  end
end