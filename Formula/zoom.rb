class Zoom < Formula
    desc "Video Conferencing, Web Conferencing, Webinars, Screen Sharing"
    homepage "https://zoom.us"
    version "5.9.1.1380"

    url "https://zoom.us/client/#{version}/zoom_x86_64.tar.xz"
    sha256 "b99d33f498ed1e3ef41c5379d90e7e597e241251bbcfef1ee2145a28f1d3f5fc"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        (libexec/"zoom_brew_exec").write <<~EOS
            #!/usr/bin/env bash
            ZOOM_PATH=$(brew --prefix zoom)/libexec
            cd $ZOOM_PATH
            LD_LIBRARY_PATH=$ZOOM_PATH ./zoom
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

