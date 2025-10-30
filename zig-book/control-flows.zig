const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const x = 5;
    if (x > 10) {
        print("x > 10!\n", .{});
    } else {
        print("x <= 10!\n", .{});
    }
}
