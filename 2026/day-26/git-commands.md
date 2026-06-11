3,6,9,14,19,24,25,29

=== SSH Key ===
<syntaxhighlight lang="bash" line highlight="2,5,6,9" copy>
# Add SSH Key
gh ssh-key add ~/.ssh/id_rsa.pub  --title "ssh-key" --type "authentication"

# List SSH Key
gh ssh-key list   # OR
gh ssh-key ls

# Delete SSH Key
gh ssh-key delete <ID> --yes
</syntaxhighlight>






gh repo set-default owner/90DaysOfDevOps
gh release create -R  owner/90DaysOfDevOps  v1.0  --notes-from-tag --title  "v1.0"
gh release delete v1.0 --yes
gh release list
gh release view

