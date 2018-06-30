class BatBinary < Formula
    desc "Go implement CLI, cURL-like tool for humans"
    homepage "https://github.com/astaxie/bat"
    version "0.0.1"

    if MacOS.prefer_64_bit?
        url "https://github.com/astaxie/bat/releases/download/v#{version}/bat_#{version}_linux_amd64.tar.gz"
        sha256 "4cc9c8e01524caf41b94f3159f95734cf1e5874521308f4708e3d535397be800"
    else
        url "https://github.com/astaxie/bat/releases/download/v#{version}/bat_#{version}_linux_386.tar.gz"
        sha256 "8e26d74fb0b3d0437001d88996a1bcfaa4de476f8aca5b1dca9c43069c94dfdc"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bat" => "bat")
    end

    def caveats; <<~EOS
        Executable is linked as "bat".
        EOS
    end
end
