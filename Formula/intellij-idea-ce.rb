class IntellijIdeaCe < Formula
    desc "The Most Intelligent Java IDE, community edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2017.1"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}.tar.gz"
    sha256 "750b517742157475bb690c1cc8f21ac151a754a38fec5c99a4bb473efd71da5d"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "ideac"})
    end
end
