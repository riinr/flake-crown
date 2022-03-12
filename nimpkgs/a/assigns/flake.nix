{
  description = ''syntax sugar for assignments'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."assigns-master".url = "path:./master";
  inputs."assigns-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assigns-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assigns-v0_4_4".url = "path:./v0_4_4";
  inputs."assigns-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assigns-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assigns-v0_5_1".url = "path:./v0_5_1";
  inputs."assigns-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assigns-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assigns-v0_6_0".url = "path:./v0_6_0";
  inputs."assigns-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assigns-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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