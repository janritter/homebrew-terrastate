# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.11.0/darwin_amd64_terrastate"
      sha256 "1f88ecb526ffa0268490a26d41fae2ebb8cc6001cee97f1e2cf454431feeef16"
      version "1.11.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.11.0/linux_amd64_terrastate"
      sha256 "d9469952dc3d8c5a9f59c1787568edc117347f495f7a5cf7829d122ad5df5a5f"
      version "1.11.0"
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