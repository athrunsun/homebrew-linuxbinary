class ClashBinary < Formula
    desc "A rule-based tunnel in Go."
    homepage "https://github.com/Dreamacro/clash"
    version "1.9.0"

    @@arch = "amd64"

    if Hardware::CPU.arm?
        @@arch = "armv8"
    end

    url "https://github.com/Dreamacro/clash/releases/download/v#{version}/clash-linux-#{@@arch}-v#{version}.gz"
    
    if Hardware::CPU.arm?
        sha256 "f927cdef44c8a53b839f527a02dcd8728a5f0adbd027b3147e9dc7cdd7bd51fc"
    else
        sha256 "c47858d87d9a6f9ae96f8aabd4113803b5ec6b3a4762f7e0f53d58e857715d26"
    end

    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/clash-linux-#{@@arch}")
        bin.install_symlink("#{libexec}/clash-linux-#{@@arch}" => "clash")
    end

    def caveats; <<~EOS
        Executable is linked as "clash".
        EOS
    end

    test do
        system "#{bin}/clash", "-v"
    end
end
