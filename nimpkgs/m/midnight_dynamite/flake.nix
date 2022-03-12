{
  description = ''Wrapper for the markdown rendering hoedown library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."midnight_dynamite-master".url = "path:./master";
  inputs."midnight_dynamite-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."midnight_dynamite-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."midnight_dynamite-v0_2_0".url = "path:./v0_2_0";
  inputs."midnight_dynamite-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."midnight_dynamite-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."midnight_dynamite-v0_2_2".url = "path:./v0_2_2";
  inputs."midnight_dynamite-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."midnight_dynamite-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."midnight_dynamite-v0_2_4".url = "path:./v0_2_4";
  inputs."midnight_dynamite-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."midnight_dynamite-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."midnight_dynamite-v1_0_0".url = "path:./v1_0_0";
  inputs."midnight_dynamite-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."midnight_dynamite-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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