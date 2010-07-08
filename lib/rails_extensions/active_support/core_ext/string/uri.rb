module RailsExtensions #:nodoc:#
  module ActiveSupport #:nodoc:#
    module CoreExtensions #:nodoc:#
      module String #:nodoc:#
        # Utility methods for working with URIs stored as String
        module Uri
          # Prepends http:// if it isn't already there
          def httpize
            return "http://" + self unless self =~ /^$|https?:\/\/.*/
            self
          end
        end
      end
    end
  end
end