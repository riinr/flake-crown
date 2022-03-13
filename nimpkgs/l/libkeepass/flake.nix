{
  description = ''Library for reading KeePass files and decrypt the passwords within it'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libkeepass-master".dir   = "master";
  inputs."libkeepass-master".owner = "nim-nix-pkgs";
  inputs."libkeepass-master".ref   = "master";
  inputs."libkeepass-master".repo  = "libkeepass";
  inputs."libkeepass-master".type  = "github";
  inputs."libkeepass-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libkeepass-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}