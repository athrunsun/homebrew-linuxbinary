class BraveBrowser < Formula
    desc "Next generation Brave browser for macOS, Windows, Linux, and eventually Android, based on Chromium."
    homepage "https://github.com/brave/brave-browser"
    version "0.57.18"

    url "https://github.com/brave/brave-browser/releases/download/v#{version}/brave-v#{version}-linux-x64.zip"
    sha256 "3bcff0a481b1b3f2ac19c2c0363d6b5ce0edfaa219cd0311ace53fbec25487fa"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/brave" => "brave")
    end

    def caveats; <<~EOS
        Executable is linked as "brave".
        EOS
    end
end
