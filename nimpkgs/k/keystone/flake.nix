{
  description = ''Bindings to the Keystone Assembler.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."keystone-master".dir   = "master";
  inputs."keystone-master".owner = "nim-nix-pkgs";
  inputs."keystone-master".ref   = "master";
  inputs."keystone-master".repo  = "keystone";
  inputs."keystone-master".type  = "github";
  inputs."keystone-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keystone-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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