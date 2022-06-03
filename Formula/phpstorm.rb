class Phpstorm < Formula
    desc "Lightning-smart PHP IDE"
    homepage "http://www.jetbrains.com/phpstorm/"
    version "2018.1.5"
    url "https://download.jetbrains.com/webide/PhpStorm-#{version}.tar.gz"
    sha256 "29b2423e46f0aa68d65a8ce18e52950ea7191bddef2ce2e6f031136860736920"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/phpstorm.sh" => "phpstorm")
    end

    def caveats; <<~EOS
        Executable is linked as "phpstorm".
        EOS
    end
end
