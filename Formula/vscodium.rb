class Vscodium < Formula
    desc "Binary releases of VS Code without MS branding/telemetry/licensing."
    homepage "https://github.com/VSCodium/vscodium"
    version "1.33.1"

    url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium-linux-x64-#{version}.tar.gz"
    sha256 "ff90d3541627e380afc7026c0ec9b451510a9440e457c951c8a3e3261aefb017"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/vscodium")
        bin.install_symlink("#{libexec}/bin/vscodium" => "vsc")
    end

    def caveats; <<~EOS
        Executable is linked as "vscodium" and "vsc".
        EOS
    end
end
