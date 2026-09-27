# ComputerCraft patch for Pastebin

This fixes Pastebin on legacy versions of ComputerCraft.

This resource pack has been confirmed to work on Tekkit main.

## The problem

When executing `pastebin get` or `pastebin put`, the program tries to access `http://pastebin.com`. This fails due to the `http` part.

Additionally, Pastebin has started requiring [a `User-Agent` header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/User-Agent) for all requests.

## The solution

The fix is really simple: Replace `http` with `https`, and include a `User-Agent` header with all requests. This restores standard functionality.

A quick caveat: versions of ComputerCraft before 1.63 [did not support specifying headers with HTTP requests](https://tweaked.cc/module/http.html#v:request). Those versions will remain broken unless the mod itself is patched.

## Credits and licensing

Two people have made videos and tutorials explaining the problem and showing how to fix it by modifying ComputerCraft directly:

- [Krakaen](https://www.youtube.com/watch?v=MkloBnl-W8s)
- ["Dylan"](https://www.youtube.com/watch?v=Nqs8m-39TnI)

**This is a "trivial change," so this goes under the ComputerCraft Public License, the same license as ComputerCraft.**
