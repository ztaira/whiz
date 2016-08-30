# whiz
A bookmark function in bash, because using the `cd` command over and over
is way too slow. 

### Usage:
- To create a new bookmarks save file, use: `whizadd [first_bookmark_name]`
- To display the list of currently available bookmarks, use: `whiz`
- To navigate directly available to a bookmark, use: `whiz [bookmark_name]`
- To add a bookmark, navigate to the location you want to add and use:
`whizadd [new_bookmark_name]`
- To add a bookmark manually, modify the ".NERDTreeBookmarks" file in your home
directory

### Features:
- Easily save and add new bookmarks, so this:
```
$ cd
$ cd Desktop
$ ls
$ cd PersonalStuff
$ ls
$ cd 2016
$ ls
$ cd Spring
$ ls
$ cd ProjectName
$ ls
$ cd ProjectSubfolder
$ pwd
Users/zacharytaira/Desktop/PersonalStuff/2016/Spring/ProjectName/ProjectSubfolder
$ _
```

Turns into this:
```
$ whiz # display all currently available bookmarks

Here are the bookmarks you can currently whiz to:
ProjectName.........~/Desktop/PersonalStuff/2016/Spring/ProjectName
ProjectSub..........~/Desktop/PersonalStuff/2016/Spring/ProjectName/ProjectSubfolder
School..............~/Desktop/School

$ whiz ProjectSub
$ pwd
Users/zacharytaira/Desktop/PersonalStuff/2016/Spring/ProjectName/ProjectSubfolder
$ _
```

### What it does:
- Saves all bookmarks to a file called ".NERDTreeBookmarks"
- Integrates with Vim's NERDTree file navigation plugin
- Parses through said file to display all bookmarks whe no argument is provided
- When an argument `bookmark\_name` is provided, navigates to the directory  
associated with `bookmark\_name`

### What it doesn't do:
- No way to delete files except by manually modifying .NERDTreeBookmarks file

### Included files:
```
- README.md..................This readme file.
- usage.txt..................Existing documentation I wrote for myself to
remind myself of whiz's usage and functionality
- whiz.sh....................Crazy useful directory navigation function, written  
in bash
```

### Example Screenshots:
