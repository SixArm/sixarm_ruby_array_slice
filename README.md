# Ruby » <br> Array slice methods by size and share

* Doc: <http://sixarm.com/sixarm_ruby_array_slice/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_array_slice>
* Repo: <http://github.com/sixarm/sixarm_ruby_array_slice>
<!--HEADER-SHUT-->


## Introduction

Array slice methods:

* #slice_by_share: divides an array into a given number of slices
* #slice_by_size: divides an array into a slices of a given size

For docs go to <http://sixarm.com/sixarm_ruby_array_slice/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Install

To install using a Gemfile, add this:

    gem "sixarm_ruby_array_slice", ">= 2.1.5", "< 3"

To install using the command line, run this:

    gem install sixarm_ruby_array_slice -v ">= 2.1.5, < 3"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_array_slice -v ">= 2.1.5, < 3" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_array_slice"

<!--INSTALL-SHUT-->


## Example

Example of both ways to slice:

    [1,2,3,4,5,6,7,8].slice_by_size(2)
    => [[1,2],[3,4],[5,6],[7,8]]

    [1,2,3,4,5,6,7,8].slice_by_share(2)
    => [[1,2,3,4],[5,6,7,8]]
