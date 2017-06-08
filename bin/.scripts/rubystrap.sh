#!/bin/bash

# All Rubies come installed with RubyPick, the Fedora Ruby manager. Therefore CRuby has its executable at /usr/bin/ruby-mri, JRuby has its at /usr/bin/jruby and /usr/bin/ruby is a RubyPick executable that chooses the right version of Ruby to run.

# You don’t need to do anything to set up RubyPick to use CRuby as CRuby is the default. RubyPick was actually introduced to enable Fedora users run other Ruby implementations that might make their way into official Fedora repositories such as JRuby.

sudo dnf update

sudo dnf -y install ruby

sudo dnf -y install ruby-tcltk rubygem-rake rubygem-test-unit

sudo dnf group install "C Development Tools and Libraries"

sudo dnf -y install ruby-devel

# Many gems from RubyGems.org are packaged and available in base Fedora to install. These packages have rubygem- prefix to upstream gem names and a rubygem(name) virtual provide, and also comes with precompiled extensions.

# To install thor gem you therefore install rubygem-thor

sudo dnf -y install rubygem-bundler rubygem-jekyll rubygem-sinatra rubygem-thin rubygem-asciidoctor

bundle --local

# Note that system gems are installed into /usr/share/gems and this path needs to be included in $GEM_PATH in case you are about to modify it.

# To look whether the required gem is available as an RPM package, look at IsItFedoraRuby.com site which tracks the Ruby integration within the Fedora project by listing available information about packaged gems.

sudo dnf group install 'Ruby on Rails'

