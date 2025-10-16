// Run this test with the command zig test

const std = @import("std");
const expect = std.testing.expect;

// Container level variables. If the container level variable is const is comptime-known otherwise it is runtime-known
var y: i32 = add(10, x);
const x: i32 = add(12, 34);

test "container level variables" {
    try expect(x == 46);
    try expect(y == 56);
}

test "expect addOne adds one to 41" {
    // The Standard Library contains useful functions to help create tests.
    // `expect` is a function that verifies its argument is true.
    // It will return an error if its argument is false to indicate a failure.
    // `try` is used to return an error to the test runner to notify it that the test failed.
    try std.testing.expect(addOne(41) == 42);
}

test addOne {
    // A test name can also be written using an identifier.
    // This is a doctest, and serves as documentation for `addOne`.
    try std.testing.expect(addOne(41) == 42);
}

fn add(a: i32, b: i32) i32 {
    return a + b;
}

/// The function `addOne` adds one to the number given as its argument.
fn addOne(number: i32) i32 {
    return number + 1;
}

const S = struct {
    var x: i32 = 1234;
};

fn foo() i32 {
    S.x += 1;
    return S.x;
}

test "namespaced container level variable" {
    try expect(foo() == 1235);
    try expect(foo() == 1236);
}
