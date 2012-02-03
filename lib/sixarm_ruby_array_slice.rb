# -*- coding: utf-8 -*-
=begin rdoc
Please see README.rdoc
=end


class Array


  # Slice the array into sub-arrays of size _n_.
  #
  # @return [Array<Array<Object>>] slices where each slice has approximately _n_ items
  #
  # If the array divides evenly then each slice has _n_ items:
  #
  #    [1,2,3,4,5,6,7,8].slice_by_size(2) => [[1,2],[3,4],[5,6],[7,8]]
  #    [1,2,3,4,5,6,7,8].slice_by_size(4) => [[1,2,3,4],[5,6,7,8]]
  #
  # If the array does not divide evenly then the last slice will be smaller:
  #
  #    [1,2,3,4,5,6,7,8].slice_by_size(3) => [[1,2,3],[4,5,6],[7,8]]
  #
  # If the array size is small compared to _n_ then the results will be best-attempt:
  #
  #    [1,2,3,4,5,6,7,8].slice_by_size(7) => [[1,2,3,4,5,6,7],[8]]
  #
  # Compare #slice_by_share

  def slice_by_size(size)
    (size.is_a? Integer) or (raise ArgumentError, "size must be an integer")
    (size > 0) or (raise ArgumentError, "size must be > 0")
    arr=[]
    index=0
    while index<length
      arr.push self[index...(index+size)]
      index+=size
    end
    return arr
  end


  # Slice the array into _n_ sub-arrays of the same size.
  #
  # @return [Array<Array<Object>>] _n_ slices where each slice is approximately the same size.
  #
  # If the array divides evenly, then each slice has size/n items:
  #
  #     [1,2,3,4,5,6,7,8].slice_by_share(2) => [[1,2,3,4],[5,6,7,8]]
  #     [1,2,3,4,5,6,7,8].slice_by_share(4) => [[1,2],[3,4],[5,6],[7,8]]
  #
  # If the array does not divide evenly then the latter slices will be smaller:
  #
  #     [1,2,3,4,5,6,7,8].slice_by_share(3) => [[1,2,3],[4,5,6],[7,8]] 
  #
  # If the array size is small compared to _n_ then the results will be best-attempt:
  #
  #     [1,2,3,4,5,6,7,8].slice_by_share(7) => [[1,2],[3,4],[5,6],[7,8],[],[],[]]
  #
  # Compare #slice_by_size

  def slice_by_share(share)
    (share.is_a? Integer) or (raise ArgumentError, "share must be an integer")
    (share > 0) or (raise ArgumentError, "share must be > 0")
    arr = slice_by_size((length.to_f/share.to_f).ceil)
    while arr.size < share do arr << [] end
    return arr
  end


end
