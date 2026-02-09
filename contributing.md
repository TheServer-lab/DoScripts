# Contributing to DoScripts

Thank you for your interest in contributing to **DoScripts**! 🎉  
This project aims to be a **safe, high‑quality, community‑driven library** of useful DoScript automation scripts.

Whether you're fixing a typo, adding a new script, or improving documentation — your help shows up in real users' workflows.

---

# 📌 Ways to contribute

You can help by:

- Adding **new DoScript automation scripts**
- Improving **existing scripts** (performance, safety, clarity)
- Fixing **bugs or incorrect behavior**
- Enhancing **documentation or examples**
- Suggesting **new categories or tooling**

No contribution is too small.

---

# 🧰 Before you start

Make sure you:

- Have the **DoScript interpreter** installed and working (`do` command available)
- Read the **README.md** for project structure and safety philosophy
- Search existing issues/PRs to avoid duplicates

---

# 📁 Repository structure

```
DoScripts/
├── scripts/
│   ├── cleanup/
│   ├── files/
│   ├── backup/
│   ├── network/
│   └── system/
├── examples/
├── templates/
└── docs/
```

Place new scripts in the **correct category folder**.

If your script doesn’t fit an existing category, open an issue first.

---

# 🧾 Required script header

Every `.do` file **must** start with metadata like this:

```
# Script: Example Script Name
# Description: One‑line explanation of what the script does
# Author: Your Name
# Requires: DoScript v2.0+
# Safe: Yes (explain scope if needed)
# Tested-On: Windows 10/11
# Tags: cleanup, files, backup
```

Pull requests **will not be accepted** without this header.

---

# 🔐 Safety rules (very important)

DoScripts prioritizes **user safety over power**.

### Your script must:

- Avoid destructive behavior by default
- Never target system roots like `C:\` automatically
- Provide **dry‑run mode** for delete/move operations
- Clearly log or print actions
- Explain risks if marked `Safe: No`

Unsafe scripts may be rejected or moved to a separate category.

---

# 🚀 Adding a new script (step‑by‑step)

1. **Fork** the repository
2. **Create a new branch**
   ```bash
   git checkout -b add-my-script
   ```
3. Add your script to the correct folder in `scripts/`
4. Ensure:
   - Header metadata is complete
   - Script is safe or has dry‑run
   - Example usage is included in comments
5. Commit changes
   ```bash
   git commit -m "Add: my useful script"
   ```
6. Push branch and open a **Pull Request**

---

# 🧪 Testing guidelines

Before submitting a PR:

- Run the script locally
- Test **dry‑run mode** first
- Verify it does not modify unintended files
- Confirm compatibility with **DoScript v2.0+**

Maintainers may run additional safety checks.

---

# 📝 Pull request checklist

Make sure your PR:

- [ ] Adds or improves a script meaningfully
- [ ] Includes required header metadata
- [ ] Is non‑destructive by default or supports dry‑run
- [ ] Has clear output/logging
- [ ] Has been tested locally
- [ ] Follows repository folder structure

---

# 🐞 Reporting bugs

When opening a bug report, include:

- Script name and path
- DoScript version
- Windows version
- Exact error message
- Steps to reproduce

Clear reports help fix issues faster.

---

# 💡 Feature requests

We welcome ideas such as:

- New script categories
- Package manager integration
- DoShell compatibility
- Script metadata indexing
- CI safety validation

Open an **issue with details** before major work.

---

# 🏷 Coding style for DoScript

General guidelines:

- Keep scripts **small and focused**
- Use **clear variable names**
- Add **comments explaining logic**
- Prefer **safe defaults** over clever shortcuts
- Make scripts readable for beginners

Think: **simple, safe, useful**.

---

# 🤝 Code of conduct

Be respectful and constructive.

We want DoScripts to be a **welcoming place for beginners and experts alike**.

Harassment, spam, or harmful contributions will be removed.

---

# ⭐ Maintainers

Maintained by the **Server‑Lab / DoScript community**.

If you'd like to become a regular contributor or maintainer, start by submitting high‑quality pull requests.

---

# ❤️ Thank you

Your contributions help build the **official ecosystem of DoScript automation**.

Let’s make DoScripts the place everyone goes to find reliable scripts. 🚀

