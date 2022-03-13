{
  description = ''zopflipng-like png optimization'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zopflipng-master".dir   = "master";
  inputs."zopflipng-master".owner = "nim-nix-pkgs";
  inputs."zopflipng-master".ref   = "master";
  inputs."zopflipng-master".repo  = "zopflipng";
  inputs."zopflipng-master".type  = "github";
  inputs."zopflipng-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zopflipng-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zopflipng-v0_1_3".dir   = "v0_1_3";
  inputs."zopflipng-v0_1_3".owner = "nim-nix-pkgs";
  inputs."zopflipng-v0_1_3".ref   = "master";
  inputs."zopflipng-v0_1_3".repo  = "zopflipng";
  inputs."zopflipng-v0_1_3".type  = "github";
  inputs."zopflipng-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zopflipng-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zopflipng-v0_1_4".dir   = "v0_1_4";
  inputs."zopflipng-v0_1_4".owner = "nim-nix-pkgs";
  inputs."zopflipng-v0_1_4".ref   = "master";
  inputs."zopflipng-v0_1_4".repo  = "zopflipng";
  inputs."zopflipng-v0_1_4".type  = "github";
  inputs."zopflipng-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zopflipng-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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