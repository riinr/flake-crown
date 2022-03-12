{
  description = ''nimaterial is a CSS output library based on material design.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimaterial-master".url = "path:./master";
  inputs."nimaterial-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimaterial-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimaterial-ver_0_3_0".url = "path:./ver_0_3_0";
  inputs."nimaterial-ver_0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimaterial-ver_0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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