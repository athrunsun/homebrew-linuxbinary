class DockerMachineBinary < Formula
    desc "Machine management for a container-centric world"
    homepage "https://github.com/docker/machine"
    version "0.16.0"

    url "https://github.com/docker/machine/releases/download/v#{version}/docker-machine-Linux-x86_64"
    sha256 "3d2cae5f66df636116153c8a96310c0cdef0060b1ecfe86116cec825bbf393d8"

    conflicts_with "docker-machine"

    def install
        libexec.install Dir["*"]
        mv("#{libexec}/docker-machine-Linux-x86_64", "#{libexec}/docker-machine")
        chmod(0755, "#{libexec}/docker-machine")
        bin.install_symlink("#{libexec}/docker-machine" => "docker-machine")
    end

    def caveats; <<~EOS
        Executable is linked as "docker-machine".
        EOS
    end
end
