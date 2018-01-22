class Webstorm < Formula
    desc "The smartest JavaScript IDE."
    homepage "http://www.jetbrains.com/webstorm/"
    version "2017.1.4"
    url "https://download.jetbrains.com/webstorm/WebStorm-#{version}.tar.gz"
    sha256 "f50b5cf70a0566976313c31530c20093ef526746ff4d27ec2e5adbc99138822b"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/webstorm.sh" => "webstorm")
    end

    def caveats; <<~EOS
        Executable is linked as "webstorm".
        EOS
    end
end
