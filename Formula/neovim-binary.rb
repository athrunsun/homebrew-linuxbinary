class NeovimBinary < Formula
    desc "Vim-fork focused on extensibility and usability."
    homepage "https://github.com/neovim/neovim"
    version "0.2.1"

    url "https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz"
    sha256 "ac01c3209b5a44698fa1f8621ff7e0b79d8da7218cd8620b866f6de70775cc2e"

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