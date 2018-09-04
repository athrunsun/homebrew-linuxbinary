class LazygitBinary < Formula
    desc "Simple terminal UI for git commands"
    homepage "https://github.com/jesseduffield/lazygit"
    version "0.2.1"

    if MacOS.prefer_64_bit?
        url "https://github.com/jesseduffield/lazygit/releases/download/v#{version}/lazygit_#{version}_Linux_x86_64.tar.gz"
        sha256 "c227678e926dd4f4c3de324d203b57e8a9880e4b9aed21946b54410e97e82270"
    else
        url "https://github.com/jesseduffield/lazygit/releases/download/v#{version}/lazygit_#{version}_Linux_32-bit.tar.gz"
        sha256 "22a24b790a51fa89e18f35d20e9d539b65389c0b4b2b783e440dfa319e10199d"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/lazygit")
        bin.install_symlink("#{libexec}/lazygit" => "lazygit")
    end

    def caveats; <<~EOS
        Executable is linked as "lazygit".
        EOS
    end
end
