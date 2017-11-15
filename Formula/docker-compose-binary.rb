class DockerComposeBinary < Formula
    desc "Isolated development environments using Docker."
    homepage "https://docs.docker.com/compose/"
    version "1.11.2"

    url "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Linux-x86_64"
    sha256 "8d55adce12461c9f2abd907da1138b3e925919212611a54c94c4794ab0a975fc"

    bottle :unneeded
    conflicts_with "docker-compose"

    def install
        libexec.install Dir["*"]
        mv("#{libexec}/docker-compose-Linux-x86_64", "#{libexec}/docker-compose")
        chmod(0755, "#{libexec}/docker-compose")
        bin.install_symlink("#{libexec}/docker-compose")
    end
end
