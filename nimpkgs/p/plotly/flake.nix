{
  description = ''Nim interface to plotly'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."plotly-master".dir   = "master";
  inputs."plotly-master".owner = "nim-nix-pkgs";
  inputs."plotly-master".ref   = "master";
  inputs."plotly-master".repo  = "plotly";
  inputs."plotly-master".type  = "github";
  inputs."plotly-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plotly-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plotly-v0_2_0".dir   = "v0_2_0";
  inputs."plotly-v0_2_0".owner = "nim-nix-pkgs";
  inputs."plotly-v0_2_0".ref   = "master";
  inputs."plotly-v0_2_0".repo  = "plotly";
  inputs."plotly-v0_2_0".type  = "github";
  inputs."plotly-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plotly-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plotly-v0_2_1".dir   = "v0_2_1";
  inputs."plotly-v0_2_1".owner = "nim-nix-pkgs";
  inputs."plotly-v0_2_1".ref   = "master";
  inputs."plotly-v0_2_1".repo  = "plotly";
  inputs."plotly-v0_2_1".type  = "github";
  inputs."plotly-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plotly-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plotly-v0_3_0".dir   = "v0_3_0";
  inputs."plotly-v0_3_0".owner = "nim-nix-pkgs";
  inputs."plotly-v0_3_0".ref   = "master";
  inputs."plotly-v0_3_0".repo  = "plotly";
  inputs."plotly-v0_3_0".type  = "github";
  inputs."plotly-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plotly-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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