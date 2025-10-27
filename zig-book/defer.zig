const std = @import("std");

pub fn main() !void {
    var i: usize = 1;
    // When the main function is executed these statements will be registered. The errdefer is a conditional defer & defer is an unconditional defer.
    errdefer std.debug.print("\nValue of i: {}\n", .{i});
    defer i = 2;
    try foo();
}

fn foo() !void {
    return error.FoorError;
}
