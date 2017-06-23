class Phpstorm < Formula
    desc "Lightning-smart PHP IDE"
    homepage "http://www.jetbrains.com/phpstorm/"
    version "2017.1.4"
    url "https://download.jetbrains.com/webide/PhpStorm-#{version}.tar.gz"
    sha256 "4ed12e9c486dd2ab729426feae9fa056b32eca39225b6d0ae4cd7cfbe3672b7f"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/phpstorm.sh" => "phpstorm")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "phpstorm".
        EOS
    end
end
