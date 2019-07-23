class FzfBinary < Formula
    desc "A command-line fuzzy finder"
    homepage "https://github.com/junegunn/fzf"
    version "0.18.0"

    url "https://github.com/junegunn/fzf-bin/releases/download/#{version}/fzf-#{version}-linux_amd64.tgz"
    sha256 "218846b4dbc45f27202fa36499290a73a278cd2c853a977133fbf718f1087ea4"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/fzf")
    end

    def caveats; <<~EOS
        Executable is linked as "fzf".
        EOS
    end
end
