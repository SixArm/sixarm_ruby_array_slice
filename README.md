# Ruby » <br> Array slice methods by size and share

* Doc: <http://sixarm.com/sixarm_ruby_array_slice/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_array_slice>
* Repo: <http://github.com/sixarm/sixarm_ruby_array_slice>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

Array slice methods:

* #slice_by_share: divides an array into a given number of slices
* #slice_by_size: divides an array into a slices of a given size

For docs go to <http://sixarm.com/sixarm_ruby_array_slice/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_array_slice

Bundler:

    gem "sixarm_ruby_array_slice", "~>2.1.4"

Require:

    require "sixarm_ruby_array_slice"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_array_slice --trust-policy HighSecurity


## Example

Example of both ways to slice:

    [1,2,3,4,5,6,7,8].slice_by_size(2)
    => [[1,2],[3,4],[5,6],[7,8]]

    [1,2,3,4,5,6,7,8].slice_by_share(2)
    => [[1,2,3,4],[5,6,7,8]]
