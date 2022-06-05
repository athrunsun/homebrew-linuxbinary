class ClashPremiumBinary < Formula
    desc "A rule-based tunnel in Go (premium version)."
    homepage "https://github.com/Dreamacro/clash"
    version "2022.05.18"

    @@arch = "amd64"

    if Hardware::CPU.arm?
        @@arch = "armv8"
    end

    url "https://github.com/Dreamacro/clash/releases/download/premium/clash-linux-#{@@arch}-#{version}.gz"
    sha256 "8d21f95e08f0994388f8c7160965ae8f1e9ca4af356948d9d501cba8ee4c8fc2"
    
    if Hardware::CPU.arm?
        sha256 "0516a27b5664b64751233f67bbd7c2a53fd3e1bb30ffa4ad4cdd4073875af536"
    end

    def install
        libexec.install Dir["*"]
        mv("#{libexec}/clash-linux-#{@@arch}-#{version}", "#{libexec}/clash")
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
