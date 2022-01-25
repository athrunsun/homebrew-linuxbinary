class ClashBinary < Formula
    desc "A rule-based tunnel in Go."
    homepage "https://github.com/Dreamacro/clash"
    version "1.9.0"

    url "https://github.com/Dreamacro/clash/releases/download/v#{version}/clash-linux-amd64-v#{version}.gz"
    sha256 "c47858d87d9a6f9ae96f8aabd4113803b5ec6b3a4762f7e0f53d58e857715d26"

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
