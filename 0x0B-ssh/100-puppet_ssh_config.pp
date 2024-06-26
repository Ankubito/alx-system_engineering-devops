# Ensure 'passwordAuthentication no' is present in etc/ssh/ssh-config
file_line { 'ensure_password_authentication_no':
  path   => '/etc/ssh/ssh-config',
  line   => 'passwordAuthentication no',
  match  => '^passwordAuthentication',
  ensure => present,
}

# Ensure 'IdentityFile ~/.ssh/school' is present in etc/ssh/ssh-config
file_line { 'ensure_identity_file_school':
  path   => '/etc/ssh/ssh-config',
  line   => 'IdentityFile ~/.ssh/school',
  match  => '^IdentityFile',
  ensure => present,
}
