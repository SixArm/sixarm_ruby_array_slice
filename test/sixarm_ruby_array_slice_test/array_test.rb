# -*- coding: utf-8 -*-
require "sixarm_ruby_array_slice_test"

describe Array do

  before do
    A ||= [1,2,3,4,5,6,7,8]
  end

  describe "#slice_by_size" do

    it "with 1 count" do
      A.slice_by_size(1).must_equal [[1],[2],[3],[4],[5],[6],[7],[8]]
    end

    it "with balanced results" do
      A.slice_by_size(2).must_equal [[1,2],[3,4],[5,6],[7,8]]
      A.slice_by_size(4).must_equal [[1,2,3,4],[5,6,7,8]]
    end

    it "with unbalanced results" do
      A.slice_by_size(3).must_equal [[1,2,3],[4,5,6],[7,8]]
    end

    it "with very unbalanced results" do
      A.slice_by_size(7).must_equal [[1,2,3,4,5,6,7],[8]]
    end

    it "with empty input" do
      [].slice_by_size(1).must_equal []
    end

    it "with 0 count" do
      assert_raise ArgumentError do
        A.slice_by_size(0)
      end
    end

    it "with negative count" do
      assert_raise ArgumentError do
        A.slice_by_size(-1)
      end
    end

    it "with float count" do
      assert_raise ArgumentError do
        A.slice_by_size(1.234)
      end
    end

    it "with non numeric count" do
      assert_raise ArgumentError do
        A.slice_by_size(1.234)
      end
    end

  end

  describe "#slice_by_share" do

    it "with 1 count" do
      A.slice_by_share(1).must_equal [[1,2,3,4,5,6,7,8]]
    end

    it "with balanced results" do
      A.slice_by_share(2).must_equal [[1,2,3,4],[5,6,7,8]]
      A.slice_by_share(4).must_equal [[1,2],[3,4],[5,6],[7,8]]
    end

    it "with unbalanced results" do
      A.slice_by_share(3).must_equal [[1,2,3],[4,5,6],[7,8]]
    end

    it "with very unbalanced results" do
      A.slice_by_share(7).must_equal [[1,2],[3,4],[5,6],[7,8],[],[],[]]
    end

    it "with zero count" do
      assert_raise ArgumentError do
        A.slice_by_share(0)
      end
    end

    it "with negative count" do
      assert_raise ArgumentError do
        A.slice_by_share(-1)
      end
    end

    it "with float count" do
      assert_raise ArgumentError do
        A.slice_by_share(1.234)
      end
    end

    it "with non numeric count" do
      assert_raise ArgumentError do
        A.slice_by_share("")
      end
    end

  end

end
