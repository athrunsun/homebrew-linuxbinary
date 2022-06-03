class Filezilla < Formula
    desc "Full-featured graphical FTP/FTPS/SFTP client"
    homepage "https://filezilla-project.org/"
    version "3.31.0"

    url "https://download.filezilla-project.org/client/FileZilla_#{version}_x86_64-linux-gnu.tar.bz2"
    sha256 "324e7d02a7f5c49decff3df219ff6a4c0c7b912f622481767558f3c1f2a5738c"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/filezilla" => "filezilla")
    end

    def caveats; <<~EOS
        Executable is linked as "filezilla".
        If you get error "libpng16.so.16: cannot open shared object file: No such file or directory" do next:
          sudo apt-get install libpng16-16
        If you get error "/usr/lib/x86_64-linux-gnu/libstdc++.so.6: version `GLIBCXX_3.4.22' not found (required by filezilla)" do next:
          sudo add-apt-repository ppa:ubuntu-toolchain-r/test
          sudo apt-get update
          sudo apt-get dist-upgrade
        EOS
    end
end
