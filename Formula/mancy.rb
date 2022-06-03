class Mancy < Formula
    desc "Electron based NodeJS REPL."
    homepage "https://github.com/princejwesley/Mancy"
    version "3.2.0"
    url "https://github.com/princejwesley/Mancy/releases/download/v#{version}/Mancy-linux-x64.zip"
    sha256 "7b8143957bf08e7a7e4278e220ffa75db91c2d6932cec9170df5b236d7e09e7a"


    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/Mancy" => "mancy"})
    end

    def caveats; <<~EOS
        Executable is linked as "mancy".
        EOS
    end
end
