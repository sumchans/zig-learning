const std = @import("std");
const print = std.debug.print;

const x = 1234;
pub fn main() void {
    foo();
}

fn foo() void {
    print("\nValue of x: {}", .{x});
    const y = 5678;
    print("\nValue of y: {}", .{y});

    var z: i32 = 5678;
    z += 1;
    print("\nValue of z: {d}", .{z});

    //Variables should be initialized. Use undefined to leave a variable uninitialized.
    // var a: i32; // This will throw an error
    var a: i32 = undefined;
    a = 18021979;
    print("\nVariable a:{}", .{a});

    // Destructuring 1
    var b: u32 = undefined;
    var c: u32 = undefined;
    var d: u32 = undefined;

    const tuple1 = .{ 1, 2, 3 };
    b, c, d = tuple1;
    print("\ntuple: x = {}, y = {}, z = {}\n", .{ b, c, d });

    const array = [_]u32{ 4, 5, 6 }; // The underscore _ tells Zig to infer the length of the array based on the number of elements provided—in this case, three elements, so the type becomes [3]u32.
    b, c, d = array;
    print("array: b = {}, c = {}, d = {}\n", .{ b, c, d });

    const vector: @Vector(3, u32) = .{ 7, 8, 9 };
    b, c, d = vector;

    print("vector: b = {}, c = {}, d = {}\n", .{ b, c, d });

    // Destructuring 2
    var m: u32 = undefined;

    const tuple2 = .{ 18, 2, 1979 };

    m, const n: u32, const o: u32 = tuple2;

    print("\nValue of m: {}", .{m});
    print("\nValue of n: {}", .{n});
    print("\nValue of o: {}", .{o});

    // You can use _ to throw away unwanted values.
    m, _, _ = tuple2;

    print("\nMutated value of m = {}", .{m});
}
