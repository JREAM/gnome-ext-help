# Gnome Extension Development

<!-- TOC -->

- [Gnome Extension Development](#gnome-extension-development)
  - [Short Terms](#short-terms)
  - [Raw Commands](#raw-commands)
  - [Preferences](#preferences)
  - [Debug](#debug)

<!-- /TOC -->

Work in here:

```sh
cd ~/.local/share/gnome-shell/extensions/
```

Create you ext:

```sh
gnome-shell-extension-tool -c
```

Copy `toggle.sh` if you want. Read some of this if you want.

- Full ext must be: `something@name.com`, within the path above.
- The **folder name** must match the **metadata.json uuid**,
- Use `./toggle.sh` to develop.
- See this Github for a great help: [github.com/julio641742/gnome-shell-extension-reference](https://github.com/julio641742/gnome-shell-extension-reference)

## Short Terms

- `St` means **Shell Toolkit**
- `Clutter` is a **UI** tool; Specifically: _"GObject based library for creating fast, visually rich, graphical user
  interfaces."_
- `Tweener` is an **animation** library.

## Raw Commands

Raw commands below, or use `toggle.sh`

```sh
# Watch Output
journalctl -f -o cat /usr/bin/gnome-shell

# Enable
gnome-shell-extension-tool -e example@wiki.gnome.org

# Disable
gnome-shell-extension-tool -d example@wiki.gnome.org

# Reload
gnome-shell-extension-tool -r example@wiki.gnome.org
```

## Preferences

You can open the preferences dialog for your extension manually with `gnome-shell-extension-prefs`:

```sh
gnome-shell-extension-prefs example@wiki.gnome.org
```

## Debug

```js
// Log a string, usually to `journalctl`
log('a message');

// Log an Error() with a stack trace and optional prefix
try {
    throw new Error('An error occurred');
} catch (e) {
    logError(e, 'ExtensionError');
}

// Print a message to stdout
print('a message');

// Print a message to stderr
printerr('An error occured');
```

Debug realtime cmds: `$ gjs-console`

---

Jesse Boyer <JREAM>
