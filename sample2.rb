require 'socket'

Socket.tcp_server_loop(4481) do | connection |
  p connection.class
  p connection.fileno
  p connection.local_address
  p connection.remote_address 
   
  connection.close
end
