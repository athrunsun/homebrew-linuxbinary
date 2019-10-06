class Zoom < Formula
    desc "Video Conferencing, Web Conferencing, Webinars, Screen Sharing"
    homepage "https://zoom.us"
    version "3.0.291715.0908"

    url "https://zoom.us/client/#{version}/zoom_x86_64.tar.xz"
    sha256 "4e3435355e0d6c296afb9c3126dfb1a7fdf8363432c2e62cebcba00b1c674eb8"

    bottle :unneeded

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
