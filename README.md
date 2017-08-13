# SixArm.com » Ruby » <br> Array slice methods by size and share

<!--HEADER-OPEN-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_array_slice.svg)](http://badge.fury.io/rb/sixarm_ruby_array_slice)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_array_slice.png)](https://travis-ci.org/SixArm/sixarm_ruby_array_slice)
[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_array_slice.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_array_slice)
[![Coverage Status](https://coveralls.io/repos/SixArm/sixarm_ruby_array_slice/badge.svg?branch=master&service=github)](https://coveralls.io/github/SixArm/sixarm_ruby_array_slice?branch=master)

* Git: <https://github.com/sixarm/sixarm_ruby_array_slice>
* Doc: <http://sixarm.com/sixarm_ruby_array_slice/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_array_slice>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [Changes](CHANGES.md), [License](LICENSE.md), [Contributing](CONTRIBUTING.md).

<!--HEADER-SHUT-->


## Introduction

Array slice methods:

* #slice_by_share: divides an array into a given number of slices
* #slice_by_size: divides an array into a slices of a given size

For docs go to <http://sixarm.com/sixarm_ruby_array_slice/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Install

### Gem

Run this command in your shell or terminal:

    gem install sixarm_ruby_array_slice

Or add this to your Gemfile:

    gem 'sixarm_ruby_array_slice'

### Require

To require the gem in your code:

    require 'sixarm_ruby_array_slice'

<!--INSTALL-SHUT-->


## Example

Example of both ways to slice:

    [1,2,3,4,5,6,7,8].slice_by_size(2)
    => [[1,2],[3,4],[5,6],[7,8]]

    [1,2,3,4,5,6,7,8].slice_by_share(2)
    => [[1,2,3,4],[5,6,7,8]]
