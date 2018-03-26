class DockerComposeBinary < Formula
    desc "Isolated development environments using Docker."
    homepage "https://github.com/docker/compose https://docs.docker.com/compose/"
    version "1.20.1"

    url "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Linux-x86_64"
    sha256 "11a6923c2a589b946598fe205c8f645e57f3f4ee153d3b7315b7e1993c1b2ad1"

    bottle :unneeded
    conflicts_with "docker-compose"

    def install
        libexec.install Dir["*"]
        mv("#{libexec}/docker-compose-Linux-x86_64", "#{libexec}/docker-compose")
        chmod(0755, "#{libexec}/docker-compose")
        bin.install_symlink("#{libexec}/docker-compose")
    end

    def caveats; <<~EOS
        Executable is linked as "docker-compose".
        EOS
    end
end
