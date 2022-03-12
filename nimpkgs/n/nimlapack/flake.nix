{
  description = ''LAPACK bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimlapack-master".url = "path:./master";
  inputs."nimlapack-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlapack-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlapack-0_1_1".url = "path:./0_1_1";
  inputs."nimlapack-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlapack-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlapack-0_2_0".url = "path:./0_2_0";
  inputs."nimlapack-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlapack-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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