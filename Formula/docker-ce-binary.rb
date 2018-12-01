class DockerCeBinary < Formula
    desc "Pack, ship and run any application as a lightweight container. This is the community edition."
    homepage "https://docs.docker.com/install/linux/docker-ce/binaries"
    version "18.09.0"

    url "https://download.docker.com/linux/static/stable/x86_64/docker-#{version}.tgz"
    sha256 "08795696e852328d66753963249f4396af2295a7fe2847b839f7102e25e47cb9"

    bottle :unneeded
    conflicts_with "docker", :because => "both install `docker` binaries"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/*"]
    end
end
