#!/bin/zsh

# Define the associative array to store symlink mappings
typeset -A symlink_mappings

# Add mappings here (from => to)
symlink_mappings=(
    "/path/to/source1" => "/path/to/target1"
    "/path/to/source2" => "/path/to/target2"
    "/path/to/source3" => "/path/to/target3"
    # Add more mappings as needed
)

# Function to create symlinks
create_symlinks() {
    for source in ${(k)symlink_mappings}; do
        target=${symlink_mappings[$source]}
        
        # Check if source exists
        if [[ ! -e $source ]]; then
            echo "Error: Source '$source' does not exist."
            continue
        fi

        # Check if target already exists
        if [[ -e $target ]]; then
            echo "Warning: Target '$target' already exists. Skipping symlink creation."
            continue
        fi

        # Create symlink
        ln -s "$source" "$target" && echo "Created symlink: $target -> $source"
    done
}

# Call the function to create symlinks
create_symlinks