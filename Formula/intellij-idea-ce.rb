class IntellijIdeaCe < Formula
    desc "The Most Intelligent Java IDE, community edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2017.1.4"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}.tar.gz"
    sha256 "85e42250d27fb45ce3d5903345d0b05f6f9119e235653869cf88b66412b633f0"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "ideac")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "ideac".
        EOS
    end
end
