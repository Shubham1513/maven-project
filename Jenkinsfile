pipeline {

agent any

    stages

    {
stage ("scm checkout")
{
    steps {
git branch: 'master' , url: 'https://github.com/Shubham1513/maven-project.git'
}
}

stage ("package")
{
    steps {
        withMaven(jdk: 'LocalJDK', maven: 'LocalMVN') {
    sh 'mvn package'
}
    }
}
stage ("docker image build")
{

steps {
sh 'docker build -t shubham1513/mytomcat:0.0.1 .'

}
}

stage ("docker image push")

{
steps {
    sh "docker login -u shubham1513 -p ${MyDocker}"
    sh 'docker push shubham1513/mytomcat:0.0.1'
    sh 'docker rmi shubham1513/mytomcat:0.0.1'

}

}
}

}
