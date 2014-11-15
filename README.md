instantpuma
===========

A Ruby + Puma + Sinatra + ERB based minimal skeleton template I use to start prototyping new ideas

# Prerequisites

Install Nginx, Rerun and Bundler. Then execute ```bundle install``` to install Puma, Sinatra and a few other things.

# Nginx Setup

Edit the file ```nginx/site_config.com``` by replacing all occurences of my_project with proper wording and then move the file to ```/etc/nginx/sites-enabled```. Restart Nginx.

# Starting the test server

Simply run: ```./test_server``` and it should boot up.
