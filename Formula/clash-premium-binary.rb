class ClashPremiumBinary < Formula
    desc "A rule-based tunnel in Go (premium version)."
    homepage "https://github.com/Dreamacro/clash"
    version "2022.05.18"

    @@os = "linux"
    @@arch = "amd64"

    if Hardware::CPU.arm?
        @@arch = "armv8"
    end

    url "https://github.com/Dreamacro/clash/releases/download/premium/clash-#{@@os}-#{@@arch}-#{version}.gz"
    sha256 "8d21f95e08f0994388f8c7160965ae8f1e9ca4af356948d9d501cba8ee4c8fc2"
    
    if Hardware::CPU.arm?
        sha256 "0516a27b5664b64751233f67bbd7c2a53fd3e1bb30ffa4ad4cdd4073875af536"
    end

    def install
        libexec.install Dir["*"]
        mv("#{libexec}/clash-#{@@os}-#{@@arch}", "#{libexec}/clash-premium")
        chmod(0755, "#{libexec}/clash-premium")
        bin.install_symlink("#{libexec}/clash-premium" => "clash-premium")
    end

    def caveats; <<~EOS
        Executable is linked as "clash-premium".
        EOS
    end

    test do
        system "#{bin}/clash", "-v"
    end
end
