module RailsExtensions #:nodoc:#
  module ActiveSupport #:nodoc:#
    module CoreExtensions #:nodoc:#
      module String #:nodoc:#
        # Utility methods for String modifications
        module Filters
          # Same as ActionView::Helpers::TextHelper.truncate
          def truncate(options = {})
            options.reverse_merge!(:length => 30, :omission => '...')
            unless self.blank?
              l = options[:length] - options[:omission].mb_chars.length
              chars = self.mb_chars
              (chars.length > options[:length] ? chars[0...l] + options[:omission] : self).to_s
            end
          end
        end
      end
    end
  end
end