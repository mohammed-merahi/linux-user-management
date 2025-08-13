#!/bin/bash

# Linux User Management Demo Script
# Author: Mohammed Merahi
# Tested on: Ubuntu 22.04
# Purpose: Demonstrate basic user and group management commands

echo "🔐 Starting Linux User Management Demo..."

# 1. Create a new user with home directory and bash shell
sudo useradd -m -s /bin/bash mohammed_demo
echo "✅ User 'mohammed_demo' created."

# 2. Set password for the new user
echo "🔑 Setting password for 'mohammed_demo'..."
echo "mohammed_demo:SecurePass123" | sudo chpasswd
echo "✅ Password set."

# 3. Force password change on next login
sudo passwd -e mohammed_demo
echo "🔁 Password expiration enforced."

# 4. View user info
echo "👤 User info:"
id mohammed_demo
getent passwd mohammed_demo

# 5. Create a new group
sudo groupadd devs_demo
echo "👥 Group 'devs_demo' created."

# 6. Add user to the new group
sudo usermod -aG devs_demo mohammed_demo
echo "✅ User 'mohammed_demo' added to 'devs_demo'."

# 7. Show user's groups
echo "📦 Groups for 'mohammed_demo':"
groups mohammed_demo

# 8. Delete user and home directory
# Uncomment the line below to enable deletion
# sudo userdel -r mohammed_demo
# echo "🗑️ User 'mohammed_demo' deleted."

echo "🎉 Demo complete. Review output and logs for details."

