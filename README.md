SpreeHoverZoom
===================

A Spree extension that adds zoom on mouse hover functionality for product images.

The javascript zoom functionality provided by

    http://www.mind-projects.it/projects/jqzoom/index.php#documentation


Installation	
=======

Add this extension to your Gemfile:

```ruby
gem "spree_hover_zoom", :git => "git://github.com/autotelik/spree_hover_zoom.git"
```

Then run:

```ruby
bundle install
```

In order to copy over required css and js file, run:

```ruby
bundle exec rails g spree_hover_zoom:install
```



Once installation is complete, when visitor places mouse over a product image a zoomed portion
will appear in a separate window. The window will automatically disappear once mouse leaves main image.


Copyright (c) 2012 Thomas Statter, released under the New BSD License
