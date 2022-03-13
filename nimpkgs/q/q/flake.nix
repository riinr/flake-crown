{
  description = ''Simple package for query HTML/XML elements using a CSS3 or jQuery-like selector syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."q-master".dir   = "master";
  inputs."q-master".owner = "nim-nix-pkgs";
  inputs."q-master".ref   = "master";
  inputs."q-master".repo  = "q";
  inputs."q-master".type  = "github";
  inputs."q-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q-0_0_2".dir   = "0_0_2";
  inputs."q-0_0_2".owner = "nim-nix-pkgs";
  inputs."q-0_0_2".ref   = "master";
  inputs."q-0_0_2".repo  = "q";
  inputs."q-0_0_2".type  = "github";
  inputs."q-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q-0_0_3".dir   = "0_0_3";
  inputs."q-0_0_3".owner = "nim-nix-pkgs";
  inputs."q-0_0_3".ref   = "master";
  inputs."q-0_0_3".repo  = "q";
  inputs."q-0_0_3".type  = "github";
  inputs."q-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q-0_0_4".dir   = "0_0_4";
  inputs."q-0_0_4".owner = "nim-nix-pkgs";
  inputs."q-0_0_4".ref   = "master";
  inputs."q-0_0_4".repo  = "q";
  inputs."q-0_0_4".type  = "github";
  inputs."q-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q-0_0_5".dir   = "0_0_5";
  inputs."q-0_0_5".owner = "nim-nix-pkgs";
  inputs."q-0_0_5".ref   = "master";
  inputs."q-0_0_5".repo  = "q";
  inputs."q-0_0_5".type  = "github";
  inputs."q-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q-0_0_6".dir   = "0_0_6";
  inputs."q-0_0_6".owner = "nim-nix-pkgs";
  inputs."q-0_0_6".ref   = "master";
  inputs."q-0_0_6".repo  = "q";
  inputs."q-0_0_6".type  = "github";
  inputs."q-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q-0_0_7".dir   = "0_0_7";
  inputs."q-0_0_7".owner = "nim-nix-pkgs";
  inputs."q-0_0_7".ref   = "master";
  inputs."q-0_0_7".repo  = "q";
  inputs."q-0_0_7".type  = "github";
  inputs."q-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q-0_0_8".dir   = "0_0_8";
  inputs."q-0_0_8".owner = "nim-nix-pkgs";
  inputs."q-0_0_8".ref   = "master";
  inputs."q-0_0_8".repo  = "q";
  inputs."q-0_0_8".type  = "github";
  inputs."q-0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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