class DbVisualizer < Formula
    desc "DbVisualizer is the universal database tool for developers,  DBAs and analysts. It is the perfect solution since the same tool can be used on all major operating systems accessing a wide range of databases."
    homepage "https://www.dbvis.com/"
    version "9.5.7"

    url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_unix_9_5_7.tar.gz"
    sha256 "d95b3aeb3d8de29c238cd60b0d8cbc2294ab68a172a37ff6764e44c90e7764f7"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/dbvis")
    end
end
