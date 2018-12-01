class DbeaverEe < Formula
    desc "One tool for all databases."
    homepage "https://dbeaver.com"
    version "5.2.2"

    if MacOS.prefer_64_bit?
        url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-linux.gtk.x86_64.tar.gz"
        sha256 "b8cb43de8c71fef18b08fa6e5b8c49b5eddd9309aeaf689b55ebfd9de4d5178e"
    else
        url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-linux.gtk.x86.tar.gz"
        sha256 "ad3841f9694c95577ab07a46d589fa5b6997df4d27f9d392414d436f4055b829"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dbeaver")
    end

    def caveats; <<~EOS
        Executable linked as "dbeaver".
        EOS
    end
end
