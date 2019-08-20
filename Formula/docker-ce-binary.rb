class DockerCeBinary < Formula
    desc "Pack, ship and run any application as a lightweight container. This is the community edition."
    homepage "https://docs.docker.com/install/linux/docker-ce/binaries"
    version "19.03.1"

    url "https://download.docker.com/linux/static/stable/x86_64/docker-#{version}.tgz"
    sha256 "6e7d8e24ee46b13d7547d751696d01607d19c8224c1b2c867acc8c779e77734b"

    bottle :unneeded
    conflicts_with "docker", :because => "both install `docker` binaries"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/*"]
    end
end
