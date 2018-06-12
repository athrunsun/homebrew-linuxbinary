class IntellijIdeaCe < Formula
    desc "The Most Intelligent Java IDE, community edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2018.1.4"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}.tar.gz"
    sha256 "4b7f7ed69ed8cda9718c640f36f18bf37de7d74ce1379d9d0217e664aa5d38e6"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "ideac")
    end

    def caveats; <<~EOS
        Executable is linked as "ideac".
        EOS
    end
end
