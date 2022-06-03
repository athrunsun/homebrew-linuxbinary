class RocketchatDesktop < Formula
    desc "Official OSX, Windows, and Linux Desktop Clients for Rocket.Chat"
    homepage "https://github.com/RocketChat/Rocket.Chat.Electron"
    version "2.15.3"

    url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.tar.gz"
    sha256 "eb36b5b63882467662d8f29fec6e56f5b51d400fa44f68c7d87381a99ebd4908"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/rocketchat-desktop")
    end

    def caveats; <<~EOS
        Executable is linked as "rocketchat-desktop".
        EOS
    end
end
