class Zoom < Formula
    desc "Video Conferencing, Web Conferencing, Webinars, Screen Sharing"
    homepage "https://zoom.us"
    version "5.9.6.2225"

    url "https://zoom.us/client/#{version}/zoom_x86_64.tar.xz"
    sha256 "0af655c5935a887f68a33968c3c54dcf4e8e530f95ea18b0ff2f254c49b18dcc"

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
        You may need to install some dependencies like 'libxcb-xtest0'.
        Executable linked as "zoom".
        EOS
    end
end

