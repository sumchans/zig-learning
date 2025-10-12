const std = @import("std");
const print = std.debug.print;
const mem = @import("std").mem; // will be used to compare bytes

// Zig requires you to use the correct format specifier for each type:
// {d}, {u} for integers
// {c} for characters
// {s} for strings/slices
// {x} for hexadecimal
// {u} prints this value as an unsigned integer.
// {x} format specifier prints it in hexadecimal.
// {} for type inference (works for some types, but not all)

pub fn main() void {
    const bytes = "hello";
    print("Value: {s}", .{bytes});
    print("\nType of bytes: {}", .{@TypeOf(bytes)});
    print("\n{d}", .{bytes.len}); // 5
    print("\n{c}", .{bytes[1]}); // 'e'

    // bytes[5] is beyond the string value hello. In zig every string is null terminated with a value of 0.
    print("\n{d}", .{bytes[5]}); // Will print 0.

    // \x65is the hexadecimal escape for the ASCII/UTF-8 value 101 which is also 'e'. Hexadecimal escapes are useful for specifying non-printable or special characters directly by their byte value.
    print("\n{}", .{'e' == '\x65'}); // will print true.

    // \u{1f4a9} is a Unicode escape sequence for the "pile of poo" emoji. This line prints the Unicode code point value of the character represented by \u{1f4a9}.
    print("\n{d}", .{'\u{1f4a9}'}); // 128169

    print("\n{d}", .{'💯'}); // 128175

    print("\n{u}", .{'⚡'});

    // mem.eql(u8, a, b) checks if the two slices a and b are equal, byte by byte.
    // "hello" is a string literal.
    // "h\x65llo" is also a string literal, where \x65 is the hexadecimal escape for the ASCII value 101, which is the letter 'e'. So "h\x65llo" is also "hello".
    // The comparison returns true because both strings are identical.
    print("\n{}", .{mem.eql(u8, "hello", "h\x65llo")}); // will return true

    // "💯" is the Unicode character for the "100" emoji.
    // "\xf0\x9f\x92\xaf" is the UTF-8 byte sequence for the same emoji.
    // mem.eql(u8, a, b) checks if the two byte slices are equal.
    //Both represent the same sequence of bytes, so the comparison returns true.
    print("\n{}", .{mem.eql(u8, "💯", "\xf0\x9f\x92\xaf")}); // will return true

    const invalid_utf8 = "\xff\xfe"; // non-UTF-8 strings are possible with \xNN notation.
    print("\n0x{x}", .{invalid_utf8[1]}); // indexing them returns individual bytes...
    print("\n0x{x}", .{"💯"[1]}); // ...as does indexing part-way through non-ASCII characters

    const multiline_string =
        \\#include <stdio.h>
        \\
        \\int main(int argc, char **argv) {
        \\    printf("hello world\n");
        \\    return 0;
        \\}
    ;
    print("\nMultiline String: {s}", .{multiline_string});
}
