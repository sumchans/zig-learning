const user = @import("user.zig");
const std = @import("std");

pub fn main() !void {
    const u: user.User = user.User.init(1, "Dev", "dev@gmail.com");
    try u.print_name();
}
