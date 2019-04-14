# install
  # ruby
  # https://github.com/postmodern/ruby-install#readmes
  cd ~
  ruby-install ruby 2.6.2

  # ~/.bashrc
  # export PATH="~/.rubies/ruby-2.6.2/bin:$PATH"
  # close terminal
  
  # install ruby gems
  cd ~
  cd Downloads/
  wget https://rubygems.org/rubygems/rubygems-3.0.3.tgz
  tar xvf rubygems-3.0.3.tgz
  cd rubygems-3.0.3
  ruby setup.rb

  # install bundler gem
  gem install bundler

  # install github pages/jekyll
  # https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/
  cd ~
  cd git/
  git clone https://github.com/cpicanco/cpicanco.github.io.git
  cd cpicanco.github.io  
  bundle install

  # install npm
  sudo apt-get install npm

  # grunt
  sudo npm install -g grunt-cli
  ln -s /usr/bin/nodejs /usr/bin/node #ubuntu
  
  # libZotero
  sudo pip install libZotero

  # citeproc-py
  sudo apt-get install python-lxml python3-lxml
  sudo pip install citeproc-py

  # the repository
  git clone https://github.com/cpicanco/cpicanco.github.io.git

  # grunt dependencies
  cd cpicanco.github.io

  # grunt dependencies
  npm install

# tasks
  # minify when necessary
    # changes in js/src were made
    grunt uglify:dynamic

    # changes in css/src were made
    grunt cssmin:dynamic

  # concat when necessary
    # covers
    grunt concat:csscover

    # blog
    grunt concat:cssblog

# misc

  # update github-pages dependencies
  bundle update
  
  # new task
  npm install <task-name> --save-dev

  # serve github page
  bundle exec jekyll serve

  # test
  bundle exec htmlproofer ./_site --disable-external --allow-hash-href