const std = @import("std");
const assert = std.debug.assert;
const print = std.debug.print;

threadlocal var x: i32 = 1234;

pub fn main() !void {
    const thread1 = try std.Thread.spawn(.{}, testTls, .{"Thread 1"});
    testTls("Main Thread");
    const thread2 = try std.Thread.spawn(.{}, testTls, .{"Thread 2"});
    thread1.join();

    thread2.join();
}

fn testTls(thread: []const u8) void {
    // {s} will display the actual string. If {s} is not added then ASCII character codes are displayed for each character.
    print("\nThread: {s}", .{thread});
    print("\nValue of x at start: {}", .{x});
    x += 1;
    print("\nValue of x at end: {}\n", .{x});
}
