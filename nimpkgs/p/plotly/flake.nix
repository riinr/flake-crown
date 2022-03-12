{
  description = ''Nim interface to plotly'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."plotly-master".url = "path:./master";
  inputs."plotly-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plotly-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plotly-v0_2_0".url = "path:./v0_2_0";
  inputs."plotly-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plotly-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plotly-v0_2_1".url = "path:./v0_2_1";
  inputs."plotly-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plotly-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plotly-v0_3_0".url = "path:./v0_3_0";
  inputs."plotly-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plotly-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}