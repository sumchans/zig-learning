const std = @import("std");
const print = std.debug.print;

// Illegal behaviour - divide by 0
fn divide(a: i32, b: i32) i32 {
    return a / b;
}

pub fn main() !void {
    //const result = divide(10, 0);
    //std.debug.print("Result = {}\n", .{result});
    //integer_overflow();
    wrapping_arithmetic();
    saturating_arithmetic();
}

// Integer Overflow
// fn integer_overflow() void {
//     var a: i32 = std.math.maxInt(i32);
//     a += 1; // 💥 overflow
//     std.debug.print("{}\n", .{a});
// }

fn wrapping_arithmetic() void {
    const a: u8 = 255;
    // u8 can hold a max value of 255.
    // Adding 1 to the already max value will overflow the integer.
    // Wrapping the return value can be done using +% operator.
    // It wraps like modular arithmetic: 255 +% 1 == 0
    const b = a +% 1;
    std.debug.print("{}\n", .{b});
}

fn saturating_arithmetic() void {
    const a: u8 = 255;
    // Saturation arithmetic: the result “sticks” at the max value instead of wrapping or overflowing.
    const b = a +| 1;
    std.debug.print("{}\n", .{b});
}
