class NeovimBinary < Formula
    desc "Vim-fork focused on extensibility and usability"
    homepage "https://neovim.io"
    version "0.5.0"

    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-linux64.tar.gz"
    sha256 "cd59e885143e0fa7e43cfdacbc8e37dc033c56d9205b8f8a8acd08cd9f93737d"

    conflicts_with "neovim"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/nvim" => "nvim")
    end

    def caveats; <<~EOS
        Executable is linked as "nvim".
        EOS
    end
end
