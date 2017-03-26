class IntellijIdea < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2017.1"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}.tar.gz"
    sha256 "4508a4b7b30fb97c02975d72ec5116a3a6fedc2a76758f4087f62cef2b94a8a0"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "idea"})
    end

    def caveats; <<-EOS.undent
        Executable is linked as "idea".
        EOS
    end
end
