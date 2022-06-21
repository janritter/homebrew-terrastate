# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.11.0/darwin_amd64_terrastate"
      sha256 "6012ba04195872a74a685bfdb11274d0cad32cad07bdaf610808496c7cb3e7fd"
      version "1.11.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.11.0/linux_amd64_terrastate"
      sha256 "57380deda4ffcd204478407f80190ec44806ba9dc3324d004675ad58b30cc8d5"
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