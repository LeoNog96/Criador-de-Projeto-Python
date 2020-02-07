read -p "Digite o nome do projeto: " project
project=${project}
read -p "Digite o diretorio do projeto: " path
path=${path}
home=~/create_project
echo 'Criando projcet '${project}' com pattern repository'

cd $path
mkdir $project
sudo chmod 750 $project -R
cd $project

echo 'Criando services'
mkdir services
touch services/run_service.py
sudo chmod 750 services -R

echo 'Criando repositories'
mkdir repositories
sudo chmod 750 repositories -R

echo 'Criando settings'
mkdir settings
touch settings/settings.py
sudo chmod 750 settings -R

echo 'Criando requirements'
mkdir requirements
touch requirements/requirements.txt
sudo chmod 750 requirements -R

echo 'Criando main.py'
touch main.py

echo 'Criando .gitignore'
touch .gitignore

echo 'Criando Dockerfile'
touch Dockerfile

cd ..

sudo chmod 750 $project -R

cd $project

cat $home/.gitignore > .gitignore
cat $home/Dockerfile > Dockerfile
echo '## '${project} > README.md

git init

echo 'Criação de projeto finalizado'


