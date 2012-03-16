# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start
require 'sixarm_ruby_array_slice'

class SliceTest < Test::Unit::TestCase

 A=[1,2,3,4,5,6,7,8]

 ### #slice_by_size typical use

 def test_slice_by_size_with_1_count
   assert_equal([[1],[2],[3],[4],[5],[6],[7],[8]], A.slice_by_size(1))
 end

 def test_slice_by_size_with_balanced_results
   assert_equal([[1,2],[3,4],[5,6],[7,8]], A.slice_by_size(2))
   assert_equal([[1,2,3,4],[5,6,7,8]], A.slice_by_size(4))
 end

 def test_slice_by_size_with_unbalanced_results
   assert_equal([[1,2,3],[4,5,6],[7,8]], A.slice_by_size(3))
 end

 def test_slice_by_size_with_very_unbalanced_results
   assert_equal([[1,2,3,4,5,6,7],[8]], A.slice_by_size(7))
 end

 ### ... atypical

 def test_slice_by_size_with_empty_input
   assert_equal([],[].slice_by_size(1))
 end

 def test_slice_by_size_with_0_count
   assert_raise ArgumentError do
     A.slice_by_size(0)
   end
 end

 def test_slice_by_size_with_negative_count
   assert_raise ArgumentError do
     A.slice_by_size(-1)
   end
 end

 def test_slice_by_size_with_float_count
   assert_raise ArgumentError do
     A.slice_by_size(1.234)
   end
 end

 def test_slice_by_size_with_non_numeric_count
   assert_raise ArgumentError do
     A.slice_by_size(1.234)
   end
 end

 ### #slice_by_share typical use

 def test_slice_by_share_with_1_count
   assert_equal([[1,2,3,4,5,6,7,8]],A.slice_by_share(1))
 end

 def test_slice_by_share_with_balanced_results
   assert_equal([[1,2,3,4],[5,6,7,8]], A.slice_by_share(2))
   assert_equal([[1,2],[3,4],[5,6],[7,8]], A.slice_by_share(4))
 end

 def test_slice_by_share_with_unbalanced_results
   assert_equal([[1,2,3],[4,5,6],[7,8]], A.slice_by_share(3))
 end

 def test_slice_by_share_with_very_unbalanced_results
   assert_equal([[1,2],[3,4],[5,6],[7,8],[],[],[]], A.slice_by_share(7))
 end

 ### ...atypical

 def test_slice_by_share_with_zero_count
   assert_raise ArgumentError do
     A.slice_by_share(0)
   end
 end

 def test_slice_by_share_with_negative_count
   assert_raise ArgumentError do
     A.slice_by_share(-1)
   end
 end

 def test_slice_by_share_with_float_count
   assert_raise ArgumentError do
     A.slice_by_share(1.234)
   end
 end

 def test_slice_by_share_with_non_numeric_count
   assert_raise ArgumentError do
     A.slice_by_share("")
   end
 end

end
