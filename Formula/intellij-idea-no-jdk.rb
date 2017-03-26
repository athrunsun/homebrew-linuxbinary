class IntellijIdeaNoJdk < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2017.1"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}-no-jdk.tar.gz"
    sha256 "0d182d4d29a715abdc2041498c3b420e0323259317d7ea15d6719d645b1cd225"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "idea"})
    end
end
