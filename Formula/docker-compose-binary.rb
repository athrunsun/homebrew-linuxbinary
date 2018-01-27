class DockerComposeBinary < Formula
    desc "Isolated development environments using Docker."
    homepage "https://docs.docker.com/compose/"
    version "1.18.0"

    url "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Linux-x86_64"
    sha256 "b2f2c3834107f526b1d9cc8d8e0bdd132c6f1495b036a32cbc61b5288d2e2a01"

    bottle :unneeded
    conflicts_with "docker-compose"

    def install
        libexec.install Dir["*"]
        mv("#{libexec}/docker-compose-Linux-x86_64", "#{libexec}/docker-compose")
        chmod(0755, "#{libexec}/docker-compose")
        bin.install_symlink("#{libexec}/docker-compose")
    end
end
