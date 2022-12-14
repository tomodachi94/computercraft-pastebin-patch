# ComputerCraft patch for Pastebin

This fixes Pastebin on legacy versions of ComputerCraft.

This resource pack has been confirmed to work on Tekkit main.

## The problem

When executing `pastebin get` or `pastebin put`, the program tries to access `http://pastebin.com`. This fails due to the `http` part.

## The solution

The fix is really simple: Replace `http` with `https`. This restores standard functionality.

## Credits and licensing

Two people have made videos and tutorials explaining the problem and showing how to fix it by modifying ComputerCraft directly:

- [Krakaen](https://www.youtube.com/watch?v=MkloBnl-W8s)
- ["Dylan"](https://www.youtube.com/watch?v=Nqs8m-39TnI)

**This is a "trivial change," so this goes under the ComputerCraft Public License, the same license as ComputerCraft.**
