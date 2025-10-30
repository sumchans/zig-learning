const user = @import("user.zig");

pub fn main() !void {
    const u: user.User = user.User.init(1, "pedro", "email@gmail.com");
    try u.print_name();
}
