require 'spec_helper'

describe List::Singly do
  before do
    @list = List::Singly.new
  end
  specify { @list.find("fred").must_be_nil }

  it "should be able to add and find nodes" do
    fred = @list.add("fred")
    @list.find("fred").value.must_equal "fred"
    fred.value.must_equal "fred"

    @list.find("wilma").must_be_nil
    @list.add("wilma")

    @list.find("fred").value.must_equal "fred"
    @list.find("wilma").value.must_equal "wilma"

    @list.values.must_equal ["fred", "wilma"]
  end

  it "should be able to remove nodes" do
    names = %w[fred wilma betty barney]
    names.each do |name|
      @list.add(name)
    end

    @list.values.must_equal names

    @list.delete(@list.find("wilma"))
    @list.values.must_equal %w[fred betty barney]

    @list.delete(@list.find("barney"))
    @list.values.must_equal %w[fred betty]

    @list.delete(@list.find("fred"))
    @list.values.must_equal %w[betty]

    @list.delete(@list.find("betty"))
    @list.values.must_equal []
  end

  it "should know about its next node" do
    @list.add("one")
    @list.add("two")

    node = @list.find("one")
    node.next.value.must_equal "two"
  end

  it "should not have a next node if only one" do
    node = @list.add("single")
    node.next.must_be_nil

    last_node = @list.add("last")
    last_node.next.must_be_nil
  end
end
