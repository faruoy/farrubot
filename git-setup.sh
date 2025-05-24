#!/data/data/com.termux/files/usr/bin/bash

# Step 1: Install git & openssh
pkg update -y
pkg install git openssh -y

# Step 2: Git user config
echo "Enter your GitHub username:"
read username
git config --global user.name "$username"

echo "Enter your GitHub email:"
read email
git config --global user.email "$email"

# Step 3: Generate SSH Key (if not exists)
if [ ! -f ~/.ssh/id_rsa ]; then
    ssh-keygen -t rsa -b 4096 -C "$email"
else
    echo "SSH key already exists."
fi

# Step 4: Show public key
echo "==== Your public SSH key ===="
cat ~/.ssh/id_rsa.pub
echo "==== Copy this and paste in GitHub > Settings > SSH & GPG keys ===="

# Step 5: Create push helper script
cat > ~/push << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash

git pull origin master
git add .
commit_msg=${1:-"Auto commit"}
git commit -m "$commit_msg"
git push origin master
EOF

chmod +x ~/push
echo 'Now you can run your push script using: ~/push "your message"'

