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

    gem "sixarm_ruby_array_slice", "=2.1.4"

Require:

    require "sixarm_ruby_array_slice"


## Example

Example of both ways to slice:

    [1,2,3,4,5,6,7,8].slice_by_size(2) 
    => [[1,2],[3,4],[5,6],[7,8]]

    [1,2,3,4,5,6,7,8].slice_by_share(2) 
    => [[1,2,3,4],[5,6,7,8]] 


## Changes

* 2012-03-16 2.1.4 1.9.3; minitest/spec; update docs, tests.
* 2012-02-01 1.0.0 Publish.


## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2013 Joel Parker Henderson
