

#LDAP Search and Data Extraction Script
This Bash script is designed to facilitate the interaction with an LDAP server, allowing users to input server details, a base Distinguished Name (DN), and a search filter. The script then performs LDAP searches to extract specific attributes, and the extracted data is saved to separate files.

#Script Components
##User Input:

The script prompts the user for the following information:

####ldap_server:#### The hostname or IP address of the LDAP server.
####base_dn:#### The base Distinguished Name (DN) for the LDAP search.
####search_filter:#### The search filter to apply during the LDAP search.
##LDAP Search and Data Extraction:

The script consists of two LDAP search operations:

The first LDAP search uses the provided search_filter to query the LDAP server and extracts the sAMAccountName attribute from the search results using the awk command. The extracted sAMAccountName values are then saved to a file named ldap_user_names.txt.

The second LDAP search, also based on the provided search_filter, extracts the Defaultpassword attribute from the LDAP search results. The extracted Defaultpassword values are saved to a separate file named ldap_default_password.txt.

##Output:

Upon completing the LDAP searches and data extraction, the script provides feedback to the user by displaying a message indicating that the LDAP search results have been saved to the respective files.

#Usage
To use this script:

Make sure you have Bash installed on your system.
Save the script to a file (e.g., ldap_search_and_extract.sh).
Provide execute permissions to the script: chmod +x ldap_search_and_extract.sh.
Run the script: ./ldap_search_and_extract.sh.
Please exercise caution when handling sensitive data, such as passwords, and ensure that proper security measures are in place when working with LDAP directories.

