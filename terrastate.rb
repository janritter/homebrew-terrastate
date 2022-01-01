# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.10.0/darwin_amd64_terrastate"
      sha256 "df996a2c8ab18d46591a628f60ffb3a0dc38f3e3f37b7061eac86cdfa65daeca"
      version "1.10.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.10.0/linux_amd64_terrastate"
      sha256 "5f5b19e7fc53bcfda868ceea1b6e37cbc73ca0310d4da832babb387a3831a6c1"
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