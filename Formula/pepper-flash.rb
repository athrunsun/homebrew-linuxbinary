class PepperFlash < Formula
    desc "Adobe Flash Player"
    homepage "https://get.adobe.com/flashplayer/"
    version "26.0.0.137"
    url "https://fpdownload.adobe.com/pub/flashplayer/pdc/#{version}/flash_player_ppapi_linux.x86_64.tar.gz"
    sha256 "4fc8ce66561a39fdcffbcd72f6129ebc3fd1f9ab05324d898f6676bdf2c6cde8"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/libpepflashplayer.so" => "libpepflashplayer.so")
    end

    def caveats; <<-EOS.undent
        Update "/etc/chromium-browser/default" to include:

        ```shell
        flashso="/home/[username]/.linuxbrew/opt/pepper-flash/bin/libpepflashplayer.so"

        if [ -f $flashso ] || [ -L $flashso ]
        then
            flashversion=`strings $flashso|grep ^LNX|sed -e "s/^LNX //"|sed -e "s/,/./g"`
            CHROMIUM_FLAGS="$CHROMIUM_FLAGS --ppapi-flash-path=$flashso --ppapi-flash-version=$flashversion"
        fi
        ```
        EOS
    end
end
