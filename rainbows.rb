worker_processes 2 # assuming four CPU cores
Rainbows! do
  use :FiberSpawn
  worker_connections 100
end
