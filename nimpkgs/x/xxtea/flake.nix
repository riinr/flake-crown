{
  description = ''XXTEA encryption algorithm library written in pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xxtea-master".dir   = "master";
  inputs."xxtea-master".owner = "nim-nix-pkgs";
  inputs."xxtea-master".ref   = "master";
  inputs."xxtea-master".repo  = "xxtea";
  inputs."xxtea-master".type  = "github";
  inputs."xxtea-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xxtea-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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