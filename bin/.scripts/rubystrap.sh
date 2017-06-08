#!/bin/bash

# All Rubies come installed with RubyPick, the Fedora Ruby manager. Therefore CRuby has its executable at /usr/bin/ruby-mri, JRuby has its at /usr/bin/jruby and /usr/bin/ruby is a RubyPick executable that chooses the right version of Ruby to run.

# You don’t need to do anything to set up RubyPick to use CRuby as CRuby is the default. RubyPick was actually introduced to enable Fedora users run other Ruby implementations that might make their way into official Fedora repositories such as JRuby.

sudo dnf update

sudo dnf -y install ruby

sudo dnf -y install ruby-tcltk rubygem-rake rubygem-test-unit

