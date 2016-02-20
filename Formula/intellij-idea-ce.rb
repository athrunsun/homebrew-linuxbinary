class IntellijIdeaCe < Formula
    desc "The Most Intelligent Java IDE, community edition."
    homepage "http://www.jetbrains.com/idea/"
    version "15.0.3"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}.tar.gz"
    sha256 "0a4b755f3a48b3b5ad1000e17a92462c33ad5a8cc4912d6e276bbc4bf1241296"

    bottle :unneeded

    def install
        prefix.install Dir["*"]
        bin.install_symlink({"#{prefix}/bin/idea.sh" => "ideac"})
    end
end