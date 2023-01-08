# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.11.4/darwin_amd64_terrastate"
      sha256 "d632d7e7c5a0e53a4c2aceb132be2feffd5e20513274dfb64ea76d22c57c5a2d"
      version "1.11.4"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.11.4/linux_amd64_terrastate"
      sha256 "380df357b2894f343206734301aeeac593a3cfb65d60a4fc2bc810ce18a79811"
      version "1.11.4"
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