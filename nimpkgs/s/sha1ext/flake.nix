{
  description = ''std / sha1 extension'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sha1ext-develop".dir   = "develop";
  inputs."sha1ext-develop".owner = "nim-nix-pkgs";
  inputs."sha1ext-develop".ref   = "master";
  inputs."sha1ext-develop".repo  = "sha1ext";
  inputs."sha1ext-develop".type  = "github";
  inputs."sha1ext-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sha1ext-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sha1ext-master".dir   = "master";
  inputs."sha1ext-master".owner = "nim-nix-pkgs";
  inputs."sha1ext-master".ref   = "master";
  inputs."sha1ext-master".repo  = "sha1ext";
  inputs."sha1ext-master".type  = "github";
  inputs."sha1ext-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sha1ext-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sha1ext-v0_1".dir   = "v0_1";
  inputs."sha1ext-v0_1".owner = "nim-nix-pkgs";
  inputs."sha1ext-v0_1".ref   = "master";
  inputs."sha1ext-v0_1".repo  = "sha1ext";
  inputs."sha1ext-v0_1".type  = "github";
  inputs."sha1ext-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sha1ext-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sha1ext-v0_1_1".dir   = "v0_1_1";
  inputs."sha1ext-v0_1_1".owner = "nim-nix-pkgs";
  inputs."sha1ext-v0_1_1".ref   = "master";
  inputs."sha1ext-v0_1_1".repo  = "sha1ext";
  inputs."sha1ext-v0_1_1".type  = "github";
  inputs."sha1ext-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sha1ext-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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