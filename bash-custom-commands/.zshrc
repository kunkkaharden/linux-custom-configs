# Function to create a directory and change to it
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Function to move up a specified number of directories
cdup() {
    local target=""
    local count=$1

    if [ "$count" -eq 0 ]; then
        cd ~
    else
    for ((i=0; i<count; i++)); do
        target="${target}../"
    done
       cd "$target"
    fi
}