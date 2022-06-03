class BatBinary < Formula
    desc "Go implement CLI, cURL-like tool for humans"
    homepage "https://github.com/astaxie/bat"
    version "0.0.1"

    url "https://github.com/astaxie/bat/releases/download/v#{version}/bat_#{version}_linux_amd64.tar.gz"
    sha256 "4cc9c8e01524caf41b94f3159f95734cf1e5874521308f4708e3d535397be800"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bat" => "bat")
    end

    def caveats; <<~EOS
        Executable is linked as "bat".
        EOS
    end
end
