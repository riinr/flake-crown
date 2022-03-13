{
  description = ''a convention mainly created for `createThread` proc'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."packedargs-main".dir   = "main";
  inputs."packedargs-main".owner = "nim-nix-pkgs";
  inputs."packedargs-main".ref   = "master";
  inputs."packedargs-main".repo  = "packedargs";
  inputs."packedargs-main".type  = "github";
  inputs."packedargs-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedargs-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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