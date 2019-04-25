# SixArm.com → Ruby → <br> Array slice methods by size and share

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_array_slice.svg)](http://badge.fury.io/rb/sixarm_ruby_array_slice)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_array_slice.png)](https://travis-ci.org/SixArm/sixarm_ruby_array_slice)
[![Code Climate](https://api.codeclimate.com/v1/badges/fb5f3a2a3d6a88a79912/maintainability)](https://codeclimate.com/github/SixArm/sixarm_ruby_array_slice/maintainability)

* Git: <https://github.com/SixArm/sixarm_ruby_array_slice>
* Doc: <http://sixarm.com/sixarm_ruby_array_slice/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_array_slice>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [changes](CHANGES.md), [license](LICENSE.md), [contributing](CONTRIBUTING.md).

<!--header-shut-->


## Introduction

Array slice methods:

* #slice_by_share: divides an array into a given number of slices
* #slice_by_size: divides an array into a slices of a given size

For docs go to <http://sixarm.com/sixarm_ruby_array_slice/doc>

Want to help? We're happy to get pull requests.


<!--install-open-->

## Install

### Gem

To install this gem in your shell or terminal:

    gem install sixarm_ruby_array_slice

### Gemfile

To add this gem to your Gemfile:

    gem 'sixarm_ruby_array_slice'

### Require

To require the gem in your code:

    require 'sixarm_ruby_array_slice'

<!--install-shut-->


## Example

Example of both ways to slice:

    [1,2,3,4,5,6,7,8].slice_by_size(2)
    => [[1,2],[3,4],[5,6],[7,8]]

    [1,2,3,4,5,6,7,8].slice_by_share(2)
    => [[1,2,3,4],[5,6,7,8]]
