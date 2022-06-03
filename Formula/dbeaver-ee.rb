class DbeaverEe < Formula
    desc "One tool for all databases."
    homepage "https://dbeaver.com"
    version "5.2.2"

    url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-linux.gtk.x86_64.tar.gz"
    sha256 "b8cb43de8c71fef18b08fa6e5b8c49b5eddd9309aeaf689b55ebfd9de4d5178e"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dbeaver")
    end

    def caveats; <<~EOS
        Executable linked as "dbeaver".
        EOS
    end
end
