class IntellijIdea < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2017.1.4"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}.tar.gz"
    sha256 "dd5b65ab7c16b735e75eb698feaa46e2f0b4f2a96e18d10d6cfb0244d4722329"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "idea")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "idea".
        EOS
    end
end
