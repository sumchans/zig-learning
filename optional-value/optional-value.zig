const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    var optional_value: ?[]const u8 = null;
    optional_value = "Hello";
    print("\nOptional Value: {any}\nType: {}\n", .{ optional_value, @TypeOf(optional_value) });
}
