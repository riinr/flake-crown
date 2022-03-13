{
  description = ''libgraphqlparser wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimgraphql-master".dir   = "master";
  inputs."nimgraphql-master".owner = "nim-nix-pkgs";
  inputs."nimgraphql-master".ref   = "master";
  inputs."nimgraphql-master".repo  = "nimgraphql";
  inputs."nimgraphql-master".type  = "github";
  inputs."nimgraphql-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgraphql-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgraphql-v0_1_0".dir   = "v0_1_0";
  inputs."nimgraphql-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimgraphql-v0_1_0".ref   = "master";
  inputs."nimgraphql-v0_1_0".repo  = "nimgraphql";
  inputs."nimgraphql-v0_1_0".type  = "github";
  inputs."nimgraphql-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgraphql-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgraphql-v0_2_0".dir   = "v0_2_0";
  inputs."nimgraphql-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimgraphql-v0_2_0".ref   = "master";
  inputs."nimgraphql-v0_2_0".repo  = "nimgraphql";
  inputs."nimgraphql-v0_2_0".type  = "github";
  inputs."nimgraphql-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgraphql-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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