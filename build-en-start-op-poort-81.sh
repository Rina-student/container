echo *** building image
docker build -t opd8 .

echo *** creating and starting container
docker run -dt -p81:80 --name opd8-cont
