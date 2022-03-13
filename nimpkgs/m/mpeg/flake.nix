{
  description = ''Nim wrapper for pl_mpeg single header mpeg library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mpeg-master".dir   = "master";
  inputs."mpeg-master".owner = "nim-nix-pkgs";
  inputs."mpeg-master".ref   = "master";
  inputs."mpeg-master".repo  = "mpeg";
  inputs."mpeg-master".type  = "github";
  inputs."mpeg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpeg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpeg-v0_1_1".dir   = "v0_1_1";
  inputs."mpeg-v0_1_1".owner = "nim-nix-pkgs";
  inputs."mpeg-v0_1_1".ref   = "master";
  inputs."mpeg-v0_1_1".repo  = "mpeg";
  inputs."mpeg-v0_1_1".type  = "github";
  inputs."mpeg-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpeg-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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