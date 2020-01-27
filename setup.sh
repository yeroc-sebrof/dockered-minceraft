wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar

docker build -t yeroc-sebrof/minceraft .
docker run -h testing-mine --expose=25565 yeroc-sebrof/minceraft

echo Done!