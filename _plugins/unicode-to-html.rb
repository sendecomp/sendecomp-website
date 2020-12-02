# Jekyll-Scholar BibTeX filter to convert rendered BibTeX from UTF-8 to ISO-8859-1.
# Citeproc and Citeproc-ruby (used by Jekyll-Scholar) both produce only utf-8 output.
# While we could patch them to be encoding-aware, our desired target encoding is missing
# characters such as curly double quotes, endashes, and the like.
# Since we are rendering ISO-8859-1 HTML (as opposed to just ISO-8859-1 text), we can use
# HTML entities to display these missing characters instead.
# This is well out of the scope of what Citeproc wants to do, so we take a hackier approach.
# Unfortunately, Jekyll's config is not in scope, so we have to hard-code the encoding
# rather than reading it out of _config.yml.

# Convert utf-8 to ISO-8859-1, replacing unicode characters not in ISO-8859-1 with xml-encoded entities.
HTML_CONV = Encoding::Converter.new('utf-8', 'ISO-8859-1', :xml => :text)

# This filter needs to run after all filters that might produce unicode text have run.
module Jekyll
  class Scholar
    class Unicode_to_HTML < BibTeX::Filter
      def apply(value)
        HTML_CONV.convert(value)
      end
    end
  end
end

# CiteProc has one utf-8 encoded regex that is matched against text after it has been run through
# all the filters. This monkey-patches the regex to have the right encoding.
module CiteProc
  class Name
    @romanesque =
      Regexp.new("^[\p{Latin}\p{Greek}\p{Cyrillic}\p{Hebrew}\p{Armenian}\p{Georgian}\p{Common}]*$".force_encoding("ISO-8859-1"))
  end
end
