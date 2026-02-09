# Sort Downloads — working with interpreter that appends filename
# Place this file inside your Downloads folder and run: do path\sort-downloads.do

global_variable = file, moved

say "Starting Downloads cleanup..."
say ""

make folder "Images"
make folder "Videos"
make folder "Documents"
make folder "Archives"
make folder "Programs"
make folder "Other"

for_each file_in "here"

    # Skip this script
    if_ends_with ".do"
        continue
    end_if

    moved = 0

    # Images
    if moved == 0
        if_ends_with ".jpg"
            move file to "Images"
            moved = 1
        end_if
    end_if

    if moved == 0
        if_ends_with ".jpeg"
            move file to "Images"
            moved = 1
        end_if
    end_if

    if moved == 0
        if_ends_with ".png"
            move file to "Images"
            moved = 1
        end_if
    end_if

    # Videos
    if moved == 0
        if_ends_with ".mp4"
            move file to "Videos"
            moved = 1
        end_if
    end_if

    if moved == 0
        if_ends_with ".mkv"
            move file to "Videos"
            moved = 1
        end_if
    end_if

    # Documents
    if moved == 0
        if_ends_with ".pdf"
            move file to "Documents"
            moved = 1
        end_if
    end_if

    if moved == 0
        if_ends_with ".doc"
            move file to "Documents"
            moved = 1
        end_if
    end_if

    if moved == 0
        if_ends_with ".txt"
            move file to "Documents"
            moved = 1
        end_if
    end_if

    # Archives
    if moved == 0
        if_ends_with ".zip"
            move file to "Archives"
            moved = 1
        end_if
    end_if

    # Programs
    if moved == 0
        if_ends_with ".exe"
            move file to "Programs"
            moved = 1
        end_if
    end_if

    # Catch-all
    if moved == 0
        move file to "Other"
    end_if

end_for

say ""
say "Downloads folder organized successfully!"
