{
  description = ''URL and URI parsing for C and JS backend.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."urlly-master".url = "path:./master";
  inputs."urlly-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."urlly-0_1_0".url = "path:./0_1_0";
  inputs."urlly-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."urlly-0_2_0".url = "path:./0_2_0";
  inputs."urlly-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."urlly-0_3_0".url = "path:./0_3_0";
  inputs."urlly-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."urlly-1_0_0".url = "path:./1_0_0";
  inputs."urlly-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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