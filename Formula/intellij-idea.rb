class IntellijIdea < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2022.2.3"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}.tar.gz"
    sha256 "e1f9de8173cec9f7166894d66b82b89dee4da9022c05366d192f6112956184b3"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "idea")
    end

    def caveats; <<~EOS
        Executable is linked as "idea".
        EOS
    end
end
