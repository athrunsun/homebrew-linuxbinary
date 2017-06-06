class DockerCeBinary < Formula
    desc "Pack, ship and run any application as a lightweight container. This is the community edition."
    homepage "https://www.docker.com/"
    version "17.05.0"

    url "https://get.docker.com/builds/Linux/x86_64/docker-#{version}-ce.tgz"
    sha256 "340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9"

    bottle :unneeded
    conflicts_with "docker"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/*"]
    end
end
