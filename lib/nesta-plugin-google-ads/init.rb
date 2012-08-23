module Nesta
  module Plugin
    module Google::Ads
      module Helpers
        def google_ad options={}
          opts = Nesta::Config.google_ad.merge(options)

          STDOUT.puts opts.inspect

          # all options are required for the add to work correctly
          %{
          <script type="text/javascript"><!--
            google_ad_client = "#{opts["client"]}";
            google_ad_slot = "#{opts["slot"]}";
            google_ad_width = #{opts["width"]};
            google_ad_height = #{opts["height"]};
            //-->
            </script>
          <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
          }
        end

      end
    end
  end

  class App
    helpers Nesta::Plugin::Google::Ads::Helpers
  end

  class Config
    @settings += %w[ google_ad ]

    def self.google_ad
      from_yaml("google_ad") || {}
    end
  end
end
