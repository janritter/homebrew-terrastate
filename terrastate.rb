# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.7.1/darwin_amd64_terrastate"
      sha256 "af34d10f9b39c27099b03b8712afc8c9507de3343e9f02ee17c53c17e3647734"
      version "1.7.1"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.7.1/linux_amd64_terrastate"
      sha256 "b4c5618ff2c5bb8d83b4e1707b44a2ce820a44ede8e684c40d1de27ed7905278"
      version "1.7.1"
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