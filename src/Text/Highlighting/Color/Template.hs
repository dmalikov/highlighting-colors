{-# LANGUAGE QuasiQuotes #-}
module Text.Highlighting.Color.Template where

import Text.Highlighting.Color.QQ

html :: String
html = [str|<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>$filename$</title>
<meta name="settings" content="use_css,pre_wrap,no_foldcolumn,expand_tabs,prevent_copy=">
<style type="text/css">
<!--
pre { white-space: pre-wrap; font-family: monospace; color: $fgcolor$; background-color: $bgcolor$; }
body { font-family: monospace; color: $fgcolor$; background-color: $bgcolor$; }
* { font-size: 1em; }
-->
</style>
</head>
<body>
<pre id='source'>
$content$
</pre>
</body>
</html> |]
