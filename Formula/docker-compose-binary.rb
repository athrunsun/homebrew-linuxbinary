class DockerComposeBinary < Formula
    desc "Isolated development environments using Docker."
    homepage "https://github.com/docker/compose"
    version "1.23.1"

    url "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Linux-x86_64"
    sha256 "c176543737b8aea762022245f0f4d58781d3cb1b072bc14f3f8e5bb96f90f1a2"

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
