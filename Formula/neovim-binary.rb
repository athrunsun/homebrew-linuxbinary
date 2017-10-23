class NeovimBinary < Formula
    desc "Vim-fork focused on extensibility and usability."
    homepage "https://github.com/neovim/neovim"
    version "0.2.1"

    url "https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz"
    sha256 "9adf41f9c8ed525906d270c66ed2cfbd9e2154a3aeccaadbb0bdfb6ce3a3ca73"

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