const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const arr1: [3]u8 = .{ 100, 200, 255 };
    print("{any}\n", .{arr1[0..2]});

    const ns = [4]u8{ 48, 24, 12, 6 };
    const sl = ns[1..3]; // Slice from index 1 to 2 (3 is exclusive)
    print("{d}\n", .{sl.len}); // Prints: 2
    print("{d}\n", .{sl[0]}); // Prints: 24

}
