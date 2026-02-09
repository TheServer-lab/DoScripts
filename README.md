# DoScripts

**DoScripts** — a curated collection of ready-to-use automation scripts written in the DoScript DSL.

> A lightweight, discoverable library of small, safe automation recipes for Windows designed to be run with the `do` interpreter.

---

## 🔍 Project purpose

This repository collects high-quality DoScript scripts ("recipes") for everyday automation tasks: cleaning, file organisation, backups, downloads, monitoring and more. The goal is to create a reliable, documented source of scripts that are:

* **Safe** — each script includes a header describing assumptions and requirements.
* **Discoverable** — organised into categories and searchable.
* **Reproducible** — minimal dependencies and clear usage examples.
* **Contributable** — clear guidance so others can add, test and maintain scripts.

This project is a community resource and a home for best-practice DoScript automation.

---

## 🚀 Features

* Categorised scripts (cleanup, files, backup, network, system)
* Script header metadata and quality rules
* Examples and usage guidelines
* Contribution guide and pull request template
* Release checklist for tagging stable versions

---

## 📁 Recommended repository layout

```
DoScripts/
│
├── README.md                # (this file)
├── LICENSE
├── CONTRIBUTING.md
├── scripts/
│   ├── cleanup/
│   ├── files/
│   ├── backup/
│   ├── network/
│   └── system/
├── examples/                # ready-to-run example workflows
├── templates/               # script header templates
└── .github/
    ├── ISSUE_TEMPLATE.md
    └── PULL_REQUEST_TEMPLATE.md
```

---

## 🧰 Prerequisites

* `DoScript` interpreter installed and available as `do` in your PATH.

Example (run a script):

```bash
# run a script from the repo root
do scripts/cleanup/cleanup-temp.do
```

If your environment uses a wrapper like `doscript.exe` (from your setup), the command may differ; replace `do` accordingly.

---

## 🧾 Script header convention (required)

Every `.do` file must begin with a small metadata header. This helps users and CI quickly understand purpose and safety.

Example header (copy to `templates/`):

```
# Script: Cleanup Temp Files
# Description: Removes temporary files from the user's temp directory.
# Author: Your Name <you@example.com>
# Requires: DoScript v2.0+
# Safe: Yes (targets user/temp only)
# Tested-On: Windows 10, Windows 11
# Tags: cleanup, temp, safe
```

**Header fields explained**

* `Script` — short human-friendly name
* `Description` — one-line summary
* `Author` — author name and optional contact
* `Requires` — interpreter/minimum version or other dependencies
* `Safe` — `Yes` or `No` (include additional explanation if `No`)
* `Tested-On` — systems where tested
* `Tags` — comma-separated tags for searching

---

## ✅ Safe scripting rules (must follow)

1. **Avoid destructive defaults** — scripts that delete must run in dry-run first or operate only on clearly safe folders.
2. **Confirm critical paths** — never target `C:\` or user root directories by default.
3. **Provide a dry-run mode** — allow `--dry-run` or an equivalent variable so users can preview changes.
4. **Log actions** — scripts should either echo actions or write to a log file.
5. **Version header** — include `Requires` to prevent accidental execution on incompatible runtimes.

---

## 📌 Example script (skeleton)

Save as `scripts/cleanup/cleanup-temp.do`:

```doscript
# Script: Cleanup Temp Files
# Description: Show and optionally delete files older than N days from the user's temp folder.
# Author: Maintainer
# Requires: DoScript v2.0+
# Safe: Yes

# CONFIG
days = 7
dry_run = true

say "Scanning user temp for files older than {days} days (dry_run={dry_run})"

for_each file_in deep
    if file_age_days > days and file_path starts_with user_temp
        say "Found: {file_path} ({file_size} bytes)"
        if not dry_run
            delete file
        end_if
    end_if
end_for

say "Done."
```

---

## 🧪 Testing and CI suggestions

* Add a GitHub Actions workflow that:

  * Lints new `.do` headers (existence of required fields)
  * Runs safe, non-destructive tests (e.g., dry-run checks, syntax checks)
  * Validates CONTRIBUTING and PR templates

* When adding destructive scripts, require a maintainer review and an explicit `safe: no` label in PR.

---

## 🤝 Contributing

1. Fork repository
2. Add script in the appropriate folder under `scripts/`
3. Include the header metadata and a README-style comment explaining assumptions
4. Add automated tests where possible (dry-run preferred)
5. Open a PR with a clear description and sample usage

See `CONTRIBUTING.md` for full details.

---

## 📝 Pull Request checklist (for contributors)

* [ ] Script header filled out
* [ ] Non-destructive by default or has dry-run
* [ ] Includes example usage
* [ ] Tested on at least one Windows version
* [ ] Added to index (if repository maintains a script index)

---

## 🔐 Licensing

Do Whatever with these scripts.

---

## 🗂 Releases & changelog

Use semantic versioning. Maintain a `CHANGELOG.md` with release notes for each tag (`v1.0.0`, `v1.1.0`, ...).

Suggested first release (v1.0.0) contents:

* 10 production-ready scripts across cleanup, files, backup and system
* README + CONTRIBUTING + LICENSE

---

## 📬 Maintainers / Contact

This project is maintained by the DoScript community. To reach the maintainers, open an issue or @ mention on pull requests. If you want to propose a large change (package manager, DoShell integration), open an RFC issue describing the plan.

---

## Next steps I can help with

* Produce `CONTRIBUTING.md` and PR templates
* Create the first 10 high-quality scripts and example workflows
* Add GitHub Actions CI samples

---

Thanks for starting **DoScripts** — this will become an essential resource for DoScript users. Let's ship a battle-ready v1.0!
