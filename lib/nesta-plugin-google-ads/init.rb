module Nesta
  module Plugin
    module Google::Ads
      module Helpers
        # If your plugin needs any helper methods, add them here...
      end
    end
  end

  class App
    helpers Nesta::Plugin::Google::Ads::Helpers
  end
end
