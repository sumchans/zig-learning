const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const arr1: [3]u8 = .{ 100, 200, 255 };
    print("{any}\n", .{arr1[0..2]});

    const ns = [4]u8{ 48, 24, 12, 6 };
    const sl = ns[1..3]; // Slice from index 1 to 2 (3 is exclusive)
    print("{d}\n", .{sl.len}); // Prints: 2
    print("{d}\n", .{sl[0]}); // Prints: 24

    const greeting = "hello";

    // var → means the variable binding is mutable (you can reassign x to point to a different slice later).
    // x → the variable name.
    // : []const u8 → the type: a slice of constant u8 values.
    // [] means it's a slice (runtime length + pointer).
    // const means the elements are read-only.
    // u8 is the element type (bytes).
    // "Hello World" → a string literal, which is a *const [11:0]u8 (pointer to an 11‑byte array with stride 0).
    // Zig automatically coerces this into a []const u8 slice.

    var x: []const u8 = "Hello World";
    x = "Hello Sumesh";
    std.debug.print("{any}\n", .{@TypeOf(greeting)});
    std.debug.print("String x is {d}\n", .{x.len});
    for (x) |byte| {
        std.debug.print("Char '{c}' is: {d}\n", .{ byte, byte });
    }
}
