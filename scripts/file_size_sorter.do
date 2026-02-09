# === File Size Sorter (DoScript v0.6) ===

log "Starting file size sorter..."

# Declare variables
global_variable = downloads

# Set target directory to Downloads folder
downloads = "C:/Users/User/Downloads"

# --- Create target folders ---
make folder "{downloads}/small_files"
make folder "{downloads}/medium_files"
make folder "{downloads}/large_files"

say "Sorting files by size in: {downloads}"
say "Categories: Small (≤50MB), Medium (50MB-1GB), Large (>1GB)"

# --- Loop through files ---
for_each file_in deep

    # Skip directories
    if file_is_dir == true
    end_if
    
    # Small files (≤50MB)
    if file_size_mb <= 50
        move file to "{downloads}/small_files/{file_name}"
        say "Small: {file_name} ({file_size_mb}MB)"
    end_if
    
    # Medium files (50MB-1GB)
    if file_size_mb > 50
        if file_size_mb <= 1024
            move file to "{downloads}/medium_files/{file_name}"
            say "Medium: {file_name} ({file_size_mb}MB)"
        end_if
    end_if
    
    # Large files (>1GB)
    if file_size_mb > 1024
        move file to "{downloads}/large_files/{file_name}"
        say "Large: {file_name} ({file_size_mb}MB)"
    end_if

end_for

log "File size sorting complete."
