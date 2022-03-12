{
  description = ''functions to tracks for genomics data files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."genoiser-master".url = "path:./master";
  inputs."genoiser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genoiser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genoiser-v0_2_4".url = "path:./v0_2_4";
  inputs."genoiser-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genoiser-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genoiser-v0_2_5".url = "path:./v0_2_5";
  inputs."genoiser-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genoiser-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genoiser-v0_2_6".url = "path:./v0_2_6";
  inputs."genoiser-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genoiser-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genoiser-v0_2_7".url = "path:./v0_2_7";
  inputs."genoiser-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genoiser-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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