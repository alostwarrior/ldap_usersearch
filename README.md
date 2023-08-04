# LDAP Search and Data Extraction Script
This Bash script interacts with an LDAP server, collecting user input for server details, base DN, and search filter. It performs two LDAP searches:


Extracts `sAMAccountName` attributes using the given filter and saves them in `ldap_user_names.txt`

Extracts `Defaultpassword` attributes with the same filter and saves them in `ldap_default_password.txt`

To use the script:

Ensure Bash is installed.

Save the script.

Make it executable: `chmod +x ldap_search_and_extract.sh`

Run: `./ldap_search_and_extract.sh`

Remember to handle sensitive data securely.

