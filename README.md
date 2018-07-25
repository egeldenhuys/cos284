# COS 284

A collection of notes and tips that works for me. Pull Requests are welcome.

## Development Environment
- [Visual Studio Code](https://code.visualstudio.com/)
    - [x86 and x86_64 Assembly](https://marketplace.visualstudio.com/items?itemName=13xforever.language-x86-64-assembly)
    - [Native Debug](https://marketplace.visualstudio.com/items?itemName=webfreak.debug)
- Yasm

## Debugging
### GDB
GDB provides the most powerful tools for debugging, such as viewing specific memory addresses using a certain format. The only problem is the terminal output often breaks, especially if there are problems in the code.

![gdb-layout](https://i.imgur.com/lbqAAHA.png)

If GDB does not give you the above layout by default, try the following:
```
$ gdb <executable>
layout regs
```

### Visual Studio Code
Not as powerful as GDB but might be more reliable.

![vscode-debug](https://i.imgur.com/ErHTo81.png)

- Follow installation and usage instructions for [Native Debug](https://marketplace.visualstudio.com/items?itemName=webfreak.debug)
- An example workspace is configured in `examples/hello-world/hello-world.code-workspace`
- Watch registers using `$rax`, `$rsp`, etc

## Useful Links
- [Linux System Call Table for x86 64](http://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)
- [GDB Cheat Sheet](https://darkdust.net/files/GDB%20Cheat%20Sheet.pdf)
- [Register Usage](https://docs.microsoft.com/en-au/cpp/build/register-usage)