class PepperFlash < Formula
    desc "Adobe Flash Player"
    homepage "https://get.adobe.com/flashplayer/"
    version "27.0.0.183"
    url "https://fpdownload.adobe.com/pub/flashplayer/pdc/#{version}/flash_player_ppapi_linux.x86_64.tar.gz"
    sha256 "144325c00f40dfa704eda72fda6518ef797eb5be37715626099de8e722f80d22"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/libpepflashplayer.so" => "libpepflashplayer.so")
    end

    def caveats; <<-EOS.undent
        Post installation instructions:
        
        Create/update "/etc/chromium-browser/default" or "~/.chromium-init" to include:
        
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
