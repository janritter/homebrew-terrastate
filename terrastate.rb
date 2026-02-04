# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/2.1.2/darwin_amd64_terrastate"
      sha256 "1196f6134d7bde1d871a987cf2c94886386aed4ca7affc9330449019d6ace77d"
      version "2.1.2"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/2.1.2/linux_amd64_terrastate"
      sha256 "e70f9d07a1f80280903e08121217ae267d2657b69fbdb8b6d869dab4ada42439"
      version "2.1.2"
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