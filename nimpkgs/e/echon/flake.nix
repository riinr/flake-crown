{
  description = ''A small package to create lindenmayer-systems or l-systems.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."echon-master".dir   = "master";
  inputs."echon-master".owner = "nim-nix-pkgs";
  inputs."echon-master".ref   = "master";
  inputs."echon-master".repo  = "echon";
  inputs."echon-master".type  = "github";
  inputs."echon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."echon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."echon-1_0_0".dir   = "1_0_0";
  inputs."echon-1_0_0".owner = "nim-nix-pkgs";
  inputs."echon-1_0_0".ref   = "master";
  inputs."echon-1_0_0".repo  = "echon";
  inputs."echon-1_0_0".type  = "github";
  inputs."echon-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."echon-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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