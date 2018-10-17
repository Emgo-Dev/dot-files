# Pandoc Markup Converter

Pandoc is a command-line utility providing tools for converting the markup formatting of one file and its' extension to that of another standard. It supports various formats namely being Markdown, PHP Markdown Github Markdown, and HTML. See `man pandoc` for more information.

Pandoc allows converting the markup of one file and file extension type to another. For reference the basic syntax for doing this is as follows:

```
$ pandoc -f <start_format> -t <end_format> -i <old_file> -o <new_file>
```

## What is Markup?

In short, markup as a concept provides a system of establishing structure, meaning, and context to plain text. This takes various forms: HTML (Hyper-Text Markup Language) provides structure for documents to the web browser - which has default presets as to how various markup tags are rendered/displayed, Markdown provides the opposite means most markup languages do - namely to establish standard document structures with as little added markup as possible.

Example of HTML:

```html
<h1>Favorite Foods</h1>

<p>I absolutely love pizza...</p>
```

Example of Markdown:

```
# Favorite Foods

I absolutely love pizza...
```