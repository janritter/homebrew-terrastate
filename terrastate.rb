# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.11.1/darwin_amd64_terrastate"
      sha256 "3b314bf8abfacbd0812c474d1c29f9df0334455b89dd544067c5f0a796cff836"
      version "1.11.1"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.11.1/linux_amd64_terrastate"
      sha256 "75dade1980c0b103a3e998bb3f8cb9cdda0f69b719260eef203de59ba2ce0d8c"
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