class Clash < Formula
    desc "A rule-based tunnel in Go."
    homepage "https://github.com/Dreamacro/clash"
    version "0.19.0"

    url "https://github.com/Dreamacro/clash/releases/download/v#{version}/clash-linux-amd64-v#{version}.gz"
    sha256 "ef212c730e204db02c7e4dc235c7829e55560dc7da8b7602736f188ee5acfe79"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/clash-linux-amd64")
        bin.install_symlink("#{libexec}/clash-linux-amd64" => "clash")
    end

    def caveats; <<~EOS
        Executable is linked as "clash".
        EOS
    end

    test do
        system "#{bin}/clash", "-v"
    end
end
