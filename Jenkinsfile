pipeline {
    agent any
    stages {
        stage('Build'){
            steps {
                echo "Build Project"
                sh label: '', script: 'ansible-playbook playbook2.yml -i inventory.txt '
            }
        }
    }
}
