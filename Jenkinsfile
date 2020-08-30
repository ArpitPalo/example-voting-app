pipeline {
    agent any
    stages {
        stage('Build'){
            steps {
                echo "Build Project"
                sh label: '', script: 'ansible-playbook playbook1.yml -i inventory.txt'
            }
        }
    }
}
