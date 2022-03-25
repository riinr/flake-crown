{
  description = ''Wrapper of the AVbin library for the Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."avbin_nim-master".dir   = "master";
  inputs."avbin_nim-master".owner = "nim-nix-pkgs";
  inputs."avbin_nim-master".ref   = "master";
  inputs."avbin_nim-master".repo  = "avbin_nim";
  inputs."avbin_nim-master".type  = "github";
  inputs."avbin_nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."avbin_nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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