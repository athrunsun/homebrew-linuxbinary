class Zoom < Formula
    desc "Video Conferencing, Web Conferencing, Webinars, Screen Sharing"
    homepage "https://zoom.us"
    version "5.11.0.3540"

    url "https://zoom.us/client/#{version}/zoom_x86_64.tar.xz"
    sha256 "b7b812f151ab303a2ca1cff581c29298fde36c1664855221e4f511ae228fe502"

    def install
        libexec.install Dir["*"]
        (libexec/"zoom_brew_exec").write <<~EOS
            #!/usr/bin/env bash
            ZOOM_PATH=$(brew --prefix zoom)/libexec
            cd $ZOOM_PATH
            LD_LIBRARY_PATH=$ZOOM_PATH:$ZOOM_PATH/cef ./zoom
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

