const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    var value: i32 = 42;
    const ptr: *i32 = &value; // ptr points to value
    std.debug.print("{any}\n", .{@TypeOf(ptr)});
}
