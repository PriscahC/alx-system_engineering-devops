# Using Puppet, create a manifest that kills a process
exec { 'pkill killmenow':
  path => '/usr/bin:/usr/sbin:/bin'
}
