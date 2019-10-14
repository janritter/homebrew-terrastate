# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.3.1/darwin_amd64_terrastate"
      sha256 "6a79f011d8a3605765b53070fc37cdab111fb622ba29fb01108463ebf0a65c69"
      version "1.3.1"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.3.1/linux_amd64_terrastate"
      sha256 "267c4b48f6db940f8764d81922622b7de61ea08772bdceb55017dc4b8547156d"
      version "1.3.1"
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