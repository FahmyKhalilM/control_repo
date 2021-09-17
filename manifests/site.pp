node default {
  
}
node 'master.puppet.vm' {
include role::master_server
}
node 'web.puppet.vm' {
include role::app_Server 
}
node /^db/ {
include role::db_server
}
