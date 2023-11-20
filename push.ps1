param(
    [string]$m = "update music site"
)

# Add all changes to git
git add .

# Commit with the provided message
git commit -m $m

# Push to the remote repository
git push origin hugo_site
