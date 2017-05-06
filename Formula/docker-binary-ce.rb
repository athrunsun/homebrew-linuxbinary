class DockerBinaryCe < Formula
    desc "Pack, ship and run any application as a lightweight container. This is the community edition."
    homepage "https://www.docker.com/"
    version "17.03.0-ce"

    url "https://get.docker.com/builds/Linux/x86_64/docker-#{version}.tgz"
    sha256 "4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e"

    bottle :unneeded
    conflicts_with "docker"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/*"]
    end
end
