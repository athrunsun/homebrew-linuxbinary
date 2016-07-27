class IntellijIdea < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2016.2"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}.tar.gz"
    sha256 "647ea2b7c1954012ca2e1e027b59ad7fa6cf24dee2dcc22c135155c60cc41182"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/idea.sh" => "idea"})
    end
end