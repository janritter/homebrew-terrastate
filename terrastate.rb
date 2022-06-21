# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.11.1/darwin_amd64_terrastate"
      sha256 "6da562c04cd8e99bd50d87bddddae0fff444ac69fe1c8008ee64678d5524a92c"
      version "1.11.1"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.11.1/linux_amd64_terrastate"
      sha256 "860654806588f4c9a91ddb255249ff658eaacbbc7a398f59bedb4fdb9308534c"
      version "1.11.1"
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