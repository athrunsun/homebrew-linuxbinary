class ClashBinary < Formula
    desc "A rule-based tunnel in Go."
    homepage "https://github.com/Dreamacro/clash"
    version "1.10.6"

    @@os = "linux"
    @@arch = "amd64"

    if Hardware::CPU.arm?
        @@arch = "armv8"
    end

    url "https://github.com/Dreamacro/clash/releases/download/v#{version}/clash-#{@@os}-#{@@arch}-v#{version}.gz"
    sha256 "a527fc55a4b19d6a84154ff91047c22cd9efc217fd12e7422007e1c2daa320c4"
    
    if Hardware::CPU.arm?
        sha256 "d435cad74a5ea9db0463ed082c597ad0e2c2a9d59d08186355edfaa608d19e5b"
    end

    def install
        libexec.install Dir["*"]
        mv("#{libexec}/clash-#{@@os}-#{@@arch}", "#{libexec}/clash")
        chmod(0755, "#{libexec}/clash")
        bin.install_symlink("#{libexec}/clash" => "clash")
    end

    def caveats; <<~EOS
        Executable is linked as "clash".
        EOS
    end

    test do
        system "#{bin}/clash", "-v"
    end
end
