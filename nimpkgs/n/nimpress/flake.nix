{
  description = ''Fast and simple calculation of polygenic scores'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimpress-develop".dir   = "develop";
  inputs."nimpress-develop".owner = "nim-nix-pkgs";
  inputs."nimpress-develop".ref   = "master";
  inputs."nimpress-develop".repo  = "nimpress";
  inputs."nimpress-develop".type  = "github";
  inputs."nimpress-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpress-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpress-master".dir   = "master";
  inputs."nimpress-master".owner = "nim-nix-pkgs";
  inputs."nimpress-master".ref   = "master";
  inputs."nimpress-master".repo  = "nimpress";
  inputs."nimpress-master".type  = "github";
  inputs."nimpress-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpress-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpress-v1_0_0".dir   = "v1_0_0";
  inputs."nimpress-v1_0_0".owner = "nim-nix-pkgs";
  inputs."nimpress-v1_0_0".ref   = "master";
  inputs."nimpress-v1_0_0".repo  = "nimpress";
  inputs."nimpress-v1_0_0".type  = "github";
  inputs."nimpress-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpress-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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