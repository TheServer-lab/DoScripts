# ============================================
# DoScript Essentials Library
# Common helpers for everyday automation
# ============================================

# ---------- GLOBAL VARIABLES ----------
global_variable = now, today, cwd, tempDir, logFile

cwd = here
today = date("YYYY-MM-DD")
now = date("YYYY-MM-DD HH:mm:ss")

tempDir = "{cwd}\temp"
logFile = "{cwd}\doscript.log"


# ---------- SAFE DIRECTORY SETUP ----------
if not exists(tempDir)
    create_dir tempDir


# ---------- LOGGING ----------
function log(msg)
    append logFile, "[{now}] {msg}"
    say "[LOG] {msg}"
end_function

function warn(msg)
    append logFile, "[{now}] WARNING: {msg}"
    say "[WARNING] {msg}"
end_function

function error(msg)
    append logFile, "[{now}] ERROR: {msg}"
    say "[ERROR] {msg}"
end_function


# ---------- FILE HELPERS ----------
function ensure_dir(path)
    if not exists(path)
        create_dir path
        log "Created directory: {path}"
    end_if
end_function

function safe_delete(path)
    if exists(path)
        delete path
        log "Deleted: {path}"
    else
        warn "Tried to delete missing path: {path}"
    end_if
end_function

function safe_move(src, dst)
    if exists(src)
        move src, dst
        log "Moved {src} → {dst}"
    else
        warn "Move failed, source missing: {src}"
    end_if
end_function


# ---------- STRING HELPERS ----------
function is_empty(text)
    if text == ""
        return true
    else
        return false
    end_if
end_function

function lower(text)
    return to_lower(text)
end_function

function upper(text)
    return to_upper(text)
end_function


# ---------- DATE/TIME ----------
function timestamp()
    return date("YYYYMMDD_HHmmss")
end_function

function today_folder(base)
    return "{base}\{today}"
end_function


# ---------- USER OUTPUT ----------
function section(title)
    say ""
    say "===== {title} ====="
end_function

function done()
    say ""
    say "✔ Finished successfully."
end_function


# ---------- STARTUP MESSAGE ----------
say "[Essentials] Loaded core helpers."
