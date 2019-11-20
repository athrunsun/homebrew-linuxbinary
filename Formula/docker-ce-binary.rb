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

    sha256 "50CDF38749642EC43D6AC50F4A3F1F7F6AC688E8D8B4E1C5B7BE06E1A82F06E9"

    bottle :unneeded
    conflicts_with "docker", :because => "both install `docker` binaries"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/*"]
    end
end
