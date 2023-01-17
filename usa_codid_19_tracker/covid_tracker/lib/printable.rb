# set of methods to use that are grouped up
module Printable
    # naming purposes
    module Format
      def text_to_interger(text)
        text.gsub(/[\,s]/, "").to_i
      end
    end
end
