# grid-mapify
Script to add a subject DN from an X.509 certificate as the key for a mapped user, and to useradd the mapped user

Typical usage for adding a host certificate as key to grid-mapfile:
''' Shell
grid-mapify.sh  /etc/grid-security/hostcert.pem  testuser
'''
