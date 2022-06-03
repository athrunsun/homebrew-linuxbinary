class GitLfsBinary < Formula
    desc "Git extension for versioning large files."
    homepage "https://git-lfs.github.com/"
    version "2.3.4"

    url "https://github.com/git-lfs/git-lfs/releases/download/v#{version}/git-lfs-linux-amd64-#{version}.tar.gz"
    sha256 "6755e109a85ffd9a03aacc629ea4ab1cbb8e7d83e41bd1880bf44b41927f4cfe"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/git-lfs")
    end

    def caveats; <<~EOS
        Executable is linked as "git-lfs".
        EOS
    end
end
