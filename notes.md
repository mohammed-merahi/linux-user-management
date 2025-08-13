# Notes: Linux User Management

These notes complement the video walkthrough and GitHub repo. They provide deeper context, command breakdowns, and practical tips for managing users on Linux systems. All commands were tested on Ubuntu 22.04 in a VirtualBox environment.

---

## 🧑‍💻 Key Concepts Covered

- Creating users: `useradd`, `adduser`
- Managing passwords: `passwd`
- Home directory setup
- Deleting users: `userdel`
- Viewing user info: `id`, `whoami`, `getent passwd`
- Group management: `groupadd`, `usermod -aG`

---

## 🛠️ Command Breakdown

### `useradd` vs `adduser`
- `useradd`: Low-level command. Requires flags for home directory and shell.
  - Example: `sudo useradd -m -s /bin/bash mohammed`
- `adduser`: Debian-based helper script. Interactive and easier for beginners.
  - Example: `sudo adduser mohammed`

### `passwd`
- Sets or changes a user’s password.
  - Example: `sudo passwd mohammed`
- Force password change on next login:
  - `sudo passwd -e mohammed`

### `userdel`
- Deletes a user.
  - Example: `sudo userdel mohammed`
- Remove home directory as well:
  - `sudo userdel -r mohammed`

### `id`, `whoami`, `getent passwd`
- `id mohammed`: Shows UID, GID, and groups.
- `whoami`: Displays current user.
- `getent passwd mohammed`: Reads user info from `/etc/passwd`.

### Group Management
- Create a group: `sudo groupadd devs`
- Add user to group: `sudo usermod -aG devs mohammed`
- View groups: `groups mohammed`

---

## ⚠️ Common Pitfalls

- Forgetting `-m` with `useradd` → no home directory created.
- Using `usermod -G` instead of `-aG` → overwrites existing groups.
- Not assigning users to `sudo` group → limited permissions.

---

## 🧩 Personal Notes

- Environment: Ubuntu 22.04 on VirtualBox
- Shell: Bash
- Documentation: OneNote + GitHub
- Repo includes README, notes, and demo script

---

## 📚 Extra Resources

- [Linux man pages](https://man7.org/linux/man-pages/)
- [Understanding /etc/passwd and /etc/shadow](https://linuxize.com/post/etc-passwd-file/)
- [User Management in Linux](https://www.geeksforgeeks.org/user-management-in-linux/)

---

## 🎥 Related Video

Watch the full walkthrough on [LinkedIn](https://linkedin.com/in/mohammed-merahi) or check the repo’s README for the direct link.

---

## 💬 Feedback & Collaboration

Feel free to fork the repo, suggest improvements, or reach out via LinkedIn. Always open to learning and sharing.


