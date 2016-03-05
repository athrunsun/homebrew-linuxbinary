class Teamviewer < Formula
    desc "Remote support, remote access, and online meeting software that the world relies on."
    homepage "http://www.teamviewer.com/"
    version "11.0.53191"

    url "http://download.teamviewer.com/download/teamviewer_i386.tar.xz"
    sha256 "807f05563375f046ee26426a5402ba99e93b942deff68d6c8c73f9b974dd7630"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/teamviewer" => "teamviewer"})
    end
end
