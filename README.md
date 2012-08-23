# Nesta::Plugin::Google::Ads

Include google ads in your Nesta CMS applciation.

## Installation

Add this line to your application's Gemfile:

    gem 'nesta-plugin-google-ads'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nesta-plugin-google-ads

## Usage

1. Update your configs. [optional if you're passing params to helper, see below]

        # config/config.yml
        # this sets default which can be overriden in your helper
        # call
        google_ad:
          client: google_client_id
          slot:   google_ad_slot_id
          width:  google_ad_width
          height: google_ad_height

2. Add helper method to your layout.haml or where you want it.

        # views/layout.haml
        -#- ... layout contents ...

        = google_ad

        -#- ... layout contents ...

> 'google_ad' helper also takes a hash of google_ad keys, which will
> override defaults set in config/config.yml.
>
> Example:
> 
>       = google_ad( "width" => 200, "height" => 200 )


## Examples

### Postal3

#### Menu Ad

        # file: views/index.haml
          1 #header
          2   %h1#logo
          3     %a{ :href => "/" }= @heading
          4     %small= no_widow @subtitle
          5 
          6 #sidebar
          7   = haml :categories, :layout => false
          8   = haml :feed, :layout => false
          9   = haml :about, :layout => false
         10   = google_ad
         11 
         12 #content
         13   - @articles.each do |article| 
         14     = haml :summary, :layout => false, :locals => { :article => article, :heading => :h2 }

#### Top Ad

        # file: views/index.haml
          1 #header
          2   %h1#logo
          3     %a{ :href => "/" }= @heading
          4     %small= no_widow @subtitle
          5 
          6 #sidebar
          7   = haml :categories, :layout => false
          8   = haml :feed, :layout => false
          9   = haml :about, :layout => false
         10 
         11 #content
         12   = google_ad
         13   - @articles.each do |article| 
         14     = haml :summary, :layout => false, :locals => { :article => article, :heading => :h2 }

#### Bottom Ad

        # file: views/index.haml
          1 #header
          2   %h1#logo
          3     %a{ :href => "/" }= @heading
          4     %small= no_widow @subtitle
          5 
          6 #sidebar
          7   = haml :categories, :layout => false
          8   = haml :feed, :layout => false
          9   = haml :about, :layout => false
         10 
         11 #content
         12   - @articles.each do |article| 
         13     = haml :summary, :layout => false, :locals => { :article => article, :heading => :h2 }
         14   = google_ad

#### Multiple Ads

        # file: views/index.haml
          1 #header
          2   %h1#logo
          3     %a{ :href => "/" }= @heading
          4     %small= no_widow @subtitle
          5 
          6 #sidebar
          7   = haml :categories, :layout => false
          8   = haml :feed, :layout => false
          9   = haml :about, :layout => false
         14   = google_ad("slot" => 0000000000, "width" => 200, "height" => 200)
         10 
         11 #content
         12   - @articles.each do |article| 
         13     = haml :summary, :layout => false, :locals => { :article => article, :heading => :h2 }
         14   = google_ad

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
