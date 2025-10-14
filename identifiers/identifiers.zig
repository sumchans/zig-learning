// Variable identifiers are never allowed to shadow identifiers from an outer scope.
// Identifiers must start with an alphabetic character or underscore and may be followed by any number of alphanumeric characters or underscores. They must not overlap with any keywords.
// If a name that does not fit these requirements is needed, such as for linking with external libraries, the @"" syntax may be used.
const @"identifier with spaces in it" = 0xff;
const @"1SmallStep4Man" = 112358;

// Calling the @"1SmallStep4Man" identifier
const calling_1SmallStep4Man = @"1SmallStep4Man";
pub extern "c" fn @"error"() void;
pub extern "c" fn @"fstat$INODE64"(fd: c.fd_t, buf: *c.Stat) c_int;

const Color = enum {
    red,
    @"really red",
};
const color: Color = .@"really red";
