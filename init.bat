call mix deps.get
call mix ecto.create
call mix ecto.migrate
cd assets
call npm install
cd..
