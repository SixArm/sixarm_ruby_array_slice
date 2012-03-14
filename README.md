# SixArm.com » Ruby » <br> Array slice methods by size and share

* Docs: <http://sixarm.com/sixarm_ruby_array_slice/doc>
* Repo: <http://github.com/sixarm/sixarm_ruby_array_slice>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

Array slice methods:

* #slice_by_share: divides an array into a given number of slices
* #slice_by_size: divides an array into a slices of a given size

For docs go to <http://sixarm.com/sixarm_ruby_array_slice/doc>

Want to help? We're happy to get pull requests.


## Quickstart

Install:

    gem install sixarm_ruby_array_slice

Bundler:

    gem "sixarm_ruby_array_slice", "=2.1.2"

Require:

    require "sixarm_ruby_array_slice"


## Example

Example of both ways to slice:

    [1,2,3,4,5,6,7,8].slice_by_size(2) 
    => [[1,2],[3,4],[5,6],[7,8]]

    [1,2,3,4,5,6,7,8].slice_by_share(2) 
    => [[1,2,3,4],[5,6,7,8]] 

