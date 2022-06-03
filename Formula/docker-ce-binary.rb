class DockerCeBinary < Formula
    desc "Pack, ship and run any application as a lightweight container. This is the community edition."
    homepage "https://docs.docker.com/install/linux/docker-ce/binaries"
    version "19.03.5"

    option "with-cn-mirror", "Download from https://mirrors.aliyun.com/docker-ce, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "cn-mirror"
        url "https://mirrors.aliyun.com/docker-ce/linux/static/stable/x86_64/docker-#{version}.tgz"
    else
        url "https://download.docker.com/linux/static/stable/x86_64/docker-#{version}.tgz"
    end

    sha256 "50cdf38749642ec43d6ac50f4a3f1f7f6ac688e8d8b4e1c5b7be06e1a82f06e9"

    conflicts_with "docker", :because => "both install `docker` binaries"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/*"]
    end
end
