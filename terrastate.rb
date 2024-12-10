# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/2.0.2/darwin_amd64_terrastate"
      sha256 "3032b4cb02e4834fdc86507fd29f5202d02bdbf28a23bc1de1ef52bc6e2bdbfa"
      version "2.0.2"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/2.0.2/linux_amd64_terrastate"
      sha256 "eb35620b2062a9b4d251ede40de298bf9359e2a656decd19b7b1a166a67aefdb"
      version "2.0.2"
    end

    def install
      if OS.mac?
        bin.install "darwin_amd64_terrastate"
        mv bin/"darwin_amd64_terrastate", bin/"terrastate"
      elsif OS.linux?
        bin.install "linux_amd64_terrastate"
        mv bin/"linux_amd64_terrastate", bin/"terrastate"
      end
    end
  
    test do
      system "false"
    end
  end