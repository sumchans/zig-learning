const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const number_or_error: anyerror!i32 = error.ArgNotFound;
    print("\nOption 1\nType: {}\nValue: {any}", .{ @TypeOf(number_or_error), number_or_error });
}
