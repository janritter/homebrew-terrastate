# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.10.0/darwin_amd64_terrastate"
      sha256 "14f4044218001a90328f56b004bc983e9e137fdcbc9e9751414d4a41fccc1a7e"
      version "1.10.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.10.0/linux_amd64_terrastate"
      sha256 "78d641de51d727d67bf69583008844b45626f0d0b9fe0075dde0218ec0923bb2"
      version "1.10.0"
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