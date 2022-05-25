# Mind Mapping Concept

Organize notes into different **types**, each getting their own directory.

## Types

 - Feelings
 - Experiences
 - How-Tos
 - Facts
 - Theories/Explanations

## Categories

Each note will have a list of categories it falls into.  These can be used to
sort the notes into a directory-tree-style view (sidebar site menu) by said
categories.

## Tree View Algorithm

1. Find the category that contains the most notes.
1. Remove all the notes in said category from the pool.
1. Find the next largest category
1. Repeat until all notes have categories. These categories are the first level
   in the tree. Notes will no categories are leaves of the root node.
1. Repeat this entire algorithm within each category to create sub-categories.

Format this tree into html and use it as the website index.

TODO implement this

## Links

Each note will have links to other notes.

## Note Template

```
<markdown>

Categories: cat1, cat2, ...
```

TODO update all notes with categories based on their current file tree position

## Backlinks

At the end of every note, generate a list of links to all other notes that
link to it.  This would serve the purpose of answering questions like "what
experiences evoke certain feelings" in a more general way.

TODO implement this in joker

## Existing System

A subset of this is my [Experiences]({{< relref
"/docs/lifestyle-optimizations/experiences.md" >}}) page.

## Visualization Examples and Libraries

 - https://biomindmap.com/nodes/185
 - https://beepb00p.xyz/blog-graph.html
 - https://github.com/hikerpig/note-graph
