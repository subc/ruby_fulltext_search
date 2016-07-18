rm -rf ./log/development.log
rails runner Tasks::Tutorial001.main -e development
echo "~~~~~~~~~~~"
cat ./log/development.log
