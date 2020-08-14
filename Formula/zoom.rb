class Zoom < Formula
    desc "Video Conferencing, Web Conferencing, Webinars, Screen Sharing"
    homepage "https://zoom.us"
    version "5.2.440215.0803"

    url "https://zoom.us/client/latest/zoom_x86_64.tar.xz"
    sha256 "f85e70bb5c1cbb0ee485000e1f2bfa3c89acbe15fa51865f9f8b91f8054841bc"

    bottle :unneeded

    depends_on "qt"

    def install
        libexec.install Dir["*"]
        (libexec/"zoom_brew_exec").write <<~EOS
            #!/usr/bin/env bash
            cd $(brew --prefix zoom)/libexec
            ./zoom
        EOS
        chmod(0755, "#{libexec}/zoom_brew_exec")
        bin.install_symlink("#{libexec}/zoom_brew_exec" => "zoom")
    end

    def caveats; <<~EOS
        You might need to install some dependencies like 'libxcb-xtest0'.
        Executable linked as "zoom".
        EOS
    end
end
