curl -sSL https://cli.openfaas.com | sudo -E sh
docker login --username gaithmtiri --password OnePiece9816*
faas-cli build -f hello.yml
faas-cli push -f hello.yml
export gw=http://$(minikube ip):31112
faas-cli deploy -f hello.yml --gateway $gw