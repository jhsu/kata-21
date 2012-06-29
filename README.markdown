# Code Kata 21

Attempted by Joseph Hsu <jhsu.x1@gmail.com>

Kata from http://codekata.pragprog.com/2007/01/kata_twenty_one.html

    list = List.new
    assert_nil(list.find("fred"))
    list.add("fred")
    assert_equal("fred", list.find("fred").value())
    assert_nil(list.find("wilma"))
    list.add("wilma")
    assert_equal("fred",  list.find("fred").value())
    assert_equal("wilma", list.find("wilma").value())
    assert_equal(["fred", "wilma"], list.values())
    
    list = List.new
    list.add("fred")
    list.add("wilma")
    list.add("betty")
    list.add("barney")
    assert_equal(["fred", "wilma", "betty", "barney"], list.values())
    list.delete(list.find("wilma"))
    assert_equal(["fred", "betty", "barney"], list.values())
    list.delete(list.find("barney"))
    assert_equal(["fred", "betty"], list.values())
    list.delete(list.find("fred"))
    assert_equal(["betty"], list.values())
    list.delete(list.find("betty"))
    assert_equal([], list.values())
    

## Running tests

1. Install gems using  `bundle install` (if on non-mac, run `bundle install --without=mac`
2. run `rake`
