# cleanup-empty.do
# SAFE: Only targets a specific folder with dry-run mode

global_variable = targetDir, file, folder

# SET YOUR TARGET DIRECTORY HERE (not root!)
targetDir = "C:\Users\User\Downloads"

say "Scanning for empty files and folders in: {targetDir}"
say "Running in DRY-RUN mode first..."
say ""

# Find empty files
for_each file_in deep
    if file_is_empty
        say "Would delete empty file: {file_path}"
         delete file_path  # COMMENTED OUT - uncomment after review
    end_if
end_for

# Find empty folders
for_each folder_in deep
    if folder_is_empty
        say "Would delete empty folder: {folder_path}"
         delete folder_path  # COMMENTED OUT - uncomment after review
    end_if
end_for

say ""
say "Review complete. Uncomment delete commands if you want to proceed."