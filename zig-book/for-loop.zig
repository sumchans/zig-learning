const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const name = [_]u8{ 'S', 'u', 'm', 'e', 's', 'h' };

    for (name) |val| {
        print("{d} | ", .{val});
    }

    const name1 = "Pedro";
    for (name1, 0..) |val, i| {
        print("{d} - {d}", .{ i, val });
    }
}
