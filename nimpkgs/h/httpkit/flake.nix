{
  description = ''An efficient HTTP tool suite written in pure nim. Help you to write HTTP services or clients via TCP, UDP, or even Unix Domain socket, etc.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."httpkit-master".dir   = "master";
  inputs."httpkit-master".owner = "nim-nix-pkgs";
  inputs."httpkit-master".ref   = "master";
  inputs."httpkit-master".repo  = "httpkit";
  inputs."httpkit-master".type  = "github";
  inputs."httpkit-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpkit-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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