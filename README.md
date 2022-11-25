# ComputerCraft patch for Pastebin

This fixes Pastebin on legacy versions of ComputerCraft.

This resource pack has been confirmed to work on Tekkit main.

## The problem

When executing `pastebin get` or `pastebin put`, the program tries to access `http://pastebin.com`. This fails, because of the `http` part.

## The solution

The fix is really simple: Replace `http` with `https`. This restores standard functionality.
