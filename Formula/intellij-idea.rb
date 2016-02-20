class IntellijIDEA < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "15.0.3"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}.tar.gz"
    sha256 "90c2a880c03bc1213c41be05e56d50a5104175e2589e492ba140987b94d8680b"

    bottle :unneeded

    def install
        prefix.install Dir[*]
        bin.install_symlink({"#{prefix}/bin/idea.sh" => "idea"})
    end
end