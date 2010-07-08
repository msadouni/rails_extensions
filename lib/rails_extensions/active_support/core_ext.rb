filenames = Dir["#{File.dirname(__FILE__)}/core_ext/*.rb"].sort.map do |path|
  File.basename(path, '.rb')
end

filenames.each { |filename| require "rails_extensions/active_support/core_ext/#{filename}" }
