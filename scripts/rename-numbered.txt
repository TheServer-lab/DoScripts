# DoScript - Rename numbered .txt files to renamed[random].txt

# Declare variables
global_variable = counter
global_variable = random_num

say "Renaming .txt files to renamed[random].txt format..."
say ""

counter = 0

# Loop through all files in current directory
for_each file_in here
    # Only process .txt files using file_ext variable
    if_ends_with ".txt"
        # Generate a random number (between 1000 and 9999)
        random_number 1000 9999 to random_num
        
        # Move (rename) the file
        move file to "renamed{random_num}.txt"
        
        # Show progress (using file_name which is auto-created by for_each)
        say "Renamed: {file_name}"
        
        counter = counter + 1
    end_if
end_for

say ""
say "Complete! Renamed files."
