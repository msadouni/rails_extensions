require 'rails_extensions/active_support/core_ext/string/uri'
require 'rails_extensions/active_support/core_ext/string/filters'

class String #:nodoc:#
  include RailsExtensions::ActiveSupport::CoreExtensions::String::Uri
end

module ActiveSupport::CoreExtensions::String::Filters
  include RailsExtensions::ActiveSupport::CoreExtensions::String::Filters
end
class String #:nodoc:#
  include ActiveSupport::CoreExtensions::String::Filters
end
