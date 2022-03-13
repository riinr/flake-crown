{
  description = ''Smart file/folder creation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shmk-master".dir   = "master";
  inputs."shmk-master".owner = "nim-nix-pkgs";
  inputs."shmk-master".ref   = "master";
  inputs."shmk-master".repo  = "shmk";
  inputs."shmk-master".type  = "github";
  inputs."shmk-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shmk-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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