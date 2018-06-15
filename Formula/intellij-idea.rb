class IntellijIdea < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2018.1.4"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}.tar.gz"
    sha256 "fb16e1533902823e1a9c5eccd5193cc548c9ce9ba5687778446a3475266c4284"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "idea")
    end

    def caveats; <<~EOS
        Executable is linked as "idea".
        EOS
    end
end
