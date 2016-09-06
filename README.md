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
- Note: the zmansynopsis command will not work out of the box. That's a function   
local to my dotfiles that I use to display the man pages I write to document  
my functions.
- Note: Also, places like Users/zacharytaira won't exist on your machine, 
so you'll have to replace those locations with things specific to your
machine. For example, you'd replace Users/zacharytaira with the location of 
your current base directory.

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
$ whiz 

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
- Parses through said file to display all bookmarks when no argument is provided
- When an argument `bookmark_name` is provided, navigates to the directory  
associated with `bookmark_name`

### What it doesn't do:
- No way to delete files except by manually modifying .NERDTreeBookmarks file

### Included files:
```
- README.md..................This readme file.
- usage.txt..................Existing documentation I wrote for myself to
remind myself of whiz's usage and functionality
- whiz.sh....................Crazy useful directory navigation function, written  
in bash
- whiz.png...................Example screenshots of my use case
```

### Example Screenshots:
### My use case:
Navigating between my 6 current Hack-A-Week repositories, checking the list
of available bookmarks, and then navigating to the 'whiz' project repository:

![alt text][outputimage]
[outputimage]: https://github.com/ztaira14/whiz/blob/master/whiz.png "Example Usage"
