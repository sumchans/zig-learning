const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    comptime var test_string: []const u8 = undefined; // must specify type when initializing with undefined
    test_string = "hello world";
    print("\n{s}", .{test_string});
}
