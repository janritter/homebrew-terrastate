# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/2.1.2/darwin_amd64_terrastate"
      sha256 "56c3f56b2e31e492cfe8358714e4c4a82bfe55113178cd19f198a30f3e169da3"
      version "2.1.2"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/2.1.2/linux_amd64_terrastate"
      sha256 "240b7dd02aed74b1dc4ee8c67a0edb82583652190c744f14f2b505fa2dcb36e9"
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