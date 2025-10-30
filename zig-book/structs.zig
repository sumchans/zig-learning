const std = @import("std");

pub fn main() void {
    const greeting = "hello";
    var x: []const u8 = "Hello World";
    x = "Hello Sumesh";
    std.debug.print("{any}\n", .{@TypeOf(greeting)});
    std.debug.print("String x is {s}\n", .{x});
}
