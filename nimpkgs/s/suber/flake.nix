{
  description = ''Pub/Sub engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."suber-main".url = "path:./main";
  inputs."suber-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suber-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suber-0_9_9".url = "path:./0_9_9";
  inputs."suber-0_9_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suber-0_9_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suber-1_0_0".url = "path:./1_0_0";
  inputs."suber-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suber-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suber-2_0_0".url = "path:./2_0_0";
  inputs."suber-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suber-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suber-2_0_1".url = "path:./2_0_1";
  inputs."suber-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suber-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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