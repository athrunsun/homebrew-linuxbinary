class FzfBinary < Formula
    desc "A command-line fuzzy finder"
    homepage "https://github.com/junegunn/fzf"
    version "0.27.0"

    url "https://github.com/junegunn/fzf/releases/download/#{version}/fzf-#{version}-linux_amd64.tar.gz"
    sha256 "1794d7f89a7e0a3d5fcb010c042fef097e5cfdf306ef45b532c4ac0e6ce276a1"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/fzf")
    end

    def caveats; <<~EOS
        Executable is linked as "fzf".
        EOS
    end
end
