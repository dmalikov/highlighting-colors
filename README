Simple sed like tool for highlighting #rrggbb color in text files.

Could be useful for debuggin Xresources or Xdefault file.

## Example

Suppose we have some urxvt theme (`~/.Xresources.scratchpad`):

    ! xmonad scratchpad settings
    scratchpad.background: #111111
    scratchpad.foreground: #a1a1a1

    scratchpad.font: -*-terminus-medium-r-*-*-18-*-*-*-*-*-iso10646-1
    scratchpad.boldFont: -*-terminus-bold-r-*-*-18-*-*-*-*-*-iso10646-1

    scratchpad.scrollstyle: plain
    scratchpad.scrollBar: false
    scratchpad.cursorBlink: false
    scratchpad.cursorUnderline: false

    scratchpad.color0:  #1c1c1c
    scratchpad.color8:  #2B2B2B
    scratchpad.color1:  #A5372E
    scratchpad.color9:  #E06C5C
    scratchpad.color2:  #4A663C
    scratchpad.color10: #7B996C
    scratchpad.color3:  #7C5618
    scratchpad.color11: #B38849
    scratchpad.color4:  #223535
    scratchpad.color12: #889393
    scratchpad.color5:  #8E4948
    scratchpad.color13: #C67C78
    scratchpad.color6:  #6D5B42
    scratchpad.color14: #A28D73
    scratchpad.color7:  #8D8D8D
    scratchpad.color15: #C6C6C6

Let's use highlighting-color:

    $> highlighting-color ~/.Xresources.scratchpad

It produce `~/.Xresources.scratchpad.html`:

    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
    <html>
    <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>filename</title>
    <meta name="settings" content="use_css,pre_wrap,no_foldcolumn,expand_tabs,prevent_copy=">
    <style type="text/css">
    <!--
    pre { white-space: pre-wrap; font-family: monospace; color: #a1a1a1; background-color: #111111; }
    body { font-family: monospace; color: #a1a1a1; background-color: #111111; }
    * { font-size: 1em; }
    -->
    </style>
    </head>
    <body>
    <pre id='source'>
    ! xmonad scratchpad settings
    scratchpad.background: <span style="color:#111111">#111111</span>
    scratchpad.foreground: <span style="color:#a1a1a1">#a1a1a1</span>

    scratchpad.font: -*-terminus-medium-r-*-*-18-*-*-*-*-*-iso10646-1
    scratchpad.boldFont: -*-terminus-bold-r-*-*-18-*-*-*-*-*-iso10646-1

    scratchpad.scrollstyle: plain
    scratchpad.scrollBar: false
    scratchpad.cursorBlink: false
    scratchpad.cursorUnderline: false

    scratchpad.color0:  <span style="color:#1c1c1c">#1c1c1c</span>
    scratchpad.color8:  <span style="color:#2B2B2B">#2B2B2B</span>
    scratchpad.color1:  <span style="color:#A5372E">#A5372E</span>
    scratchpad.color9:  <span style="color:#E06C5C">#E06C5C</span>
    scratchpad.color2:  <span style="color:#4A663C">#4A663C</span>
    scratchpad.color10: <span style="color:#7B996C">#7B996C</span>
    scratchpad.color3:  <span style="color:#7C5618">#7C5618</span>
    scratchpad.color11: <span style="color:#B38849">#B38849</span>
    scratchpad.color4:  <span style="color:#223535">#223535</span>
    scratchpad.color12: <span style="color:#889393">#889393</span>
    scratchpad.color5:  <span style="color:#8E4948">#8E4948</span>
    scratchpad.color13: <span style="color:#C67C78">#C67C78</span>
    scratchpad.color6:  <span style="color:#6D5B42">#6D5B42</span>
    scratchpad.color14: <span style="color:#A28D73">#A28D73</span>
    scratchpad.color7:  <span style="color:#8D8D8D">#8D8D8D</span>
    scratchpad.color15: <span style="color:#C6C6C6">#C6C6C6</span>

    </pre>
    </body>
    </html>
