
# ============================================================================
# Bookmark Functions - whiz (whiz, as in "whiz to $bookmarkname")
# ============================================================================
# Go to Bookmark
whiz () {
    local bookmark_name="$1"
    if [ "$bookmark_name" == "help" ]; then
        zmansynopsis whiz
    elif [ -n "$bookmark_name" ]; then
        local bookmark_line=$(grep "$bookmark_name " ~/.NERDTreeBookmarks)
        local destination=${bookmark_line/$bookmark_name \~//Users/zacharytaira}
        local final_destination=${destination/$bookmark_name /}
        echo "Whizzing to $final_destination"
        cd $final_destination
    else
        echo ""
        echo "Here are the bookmarks you can currently whiz to:"
        nyan ~/.NERDTreeBookmarks 20
        echo ""
    fi
}

# Add Bookmark
whizadd () {
    local full_path=$PWD
    local bookmark_name="$1"
    if [ -n "$bookmark_name" ]; then
        echo "$bookmark_name ${full_path/$HOME/~}" >> ~/.NERDTreeBookmarks
    else
        zmansynopsis whizadd
    fi
}

# Read in lines and space them. 
# It's a spaced version of cat. 
nyan () {
    local filename="$1"
    local column_width="$2"
    while read -r line
    do
        local first_word=$(echo $line | sed -e 's/ .*//')
        local amount_of_spaces=$(($column_width-${#first_word}))
        local spaces=$(printf "%0.s." $(seq 1 $amount_of_spaces))
        echo $(printf '%s' "$line" | sed -e "s/ /$spaces/")
    done < "$filename"
}

