# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.6.2/darwin_amd64_terrastate"
      sha256 "cf59b7f4a16ee4245da1d0be443b641d8fb75f1bb976106182ef997363bbad75"
      version "1.6.2"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.6.2/linux_amd64_terrastate"
      sha256 "541cba4aae0064109528f8c72370536d6ed91c38acb9a9a55e66f3e7d1ce3ae7"
      version "1.6.2"
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