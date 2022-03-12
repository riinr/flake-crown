{
  description = ''256 colors for shell'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rainbow-master".url = "path:./master";
  inputs."rainbow-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rainbow-v0_2_0".url = "path:./v0_2_0";
  inputs."rainbow-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rainbow-v0_2_1".url = "path:./v0_2_1";
  inputs."rainbow-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rainbow-v0_2_2".url = "path:./v0_2_2";
  inputs."rainbow-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rainbow-v0_2_3".url = "path:./v0_2_3";
  inputs."rainbow-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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