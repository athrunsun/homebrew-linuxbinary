class ResilioSync < Formula
    desc "A fast, reliable, and simple file sync and share solution."
    homepage "https://www.resilio.com/"
    version "2.4.3"

    if MacOS.prefer_64_bit?
        url "https://download-cdn.resilio.com/stable/linux-x64/resilio-sync_x64.tar.gz"
        sha256 "baedc5f316705bd2f74097776eba6b4d9f4ba02531353c2a3d4938e18d05815a"
    else
        url "https://download-cdn.resilio.com/stable/linux-i386/resilio-sync_i386.tar.gz"
        sha256 "8af33f2a2493fc3476b86abcbd1f45c715408c502d200173e802882fba2c3213"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/rslsync")
    end
end
