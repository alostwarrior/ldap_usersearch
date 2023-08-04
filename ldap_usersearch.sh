#!/bin/bash

# Get LDAP server details from user
read -p "Enter LDAP server hostname or IP address: " ldap_server
read -p "Enter base DN: " base_dn

# Get search filter from user
read -p "Enter search filter: " search_filter

# Perform LDAP search and extract sAMAccountName and Defaultpassword to files
ldapsearch -x -h "$ldap_server" -b "$base_dn" "$search_filter" sAMAccountName | awk '/sAMAccountName:/ { print $2 }' > ldap_user_names.txt
ldapsearch -x -h "$ldap_server" -b "$base_dn" "$search_filter" Defaultpassword | awk '/Defaultpassword:/ { print $2 }' > ldap_default_password.txt

echo "LDAP search results saved to ldap_user_names.txt and ldap_default_password.txt"
