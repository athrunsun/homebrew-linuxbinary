class NeovimBinary < Formula
    desc "Vim-fork focused on extensibility and usability."
    homepage "https://github.com/neovim/neovim"
    version "0.2.1"

    url "https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz"
    sha256 "dbed6b594b014e1e08a064c736d3499cd7d288f5f52c0aabde2b865f9795ceec"

    bottle :unneeded
    conflicts_with "neovim", "neovim-appimage"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/nvim")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "nvim".
        EOS
    end
end