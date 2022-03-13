{
  description = ''Extends stdlib make it easy on some case'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stdext-master".dir   = "master";
  inputs."stdext-master".owner = "nim-nix-pkgs";
  inputs."stdext-master".ref   = "master";
  inputs."stdext-master".repo  = "stdext";
  inputs."stdext-master".type  = "github";
  inputs."stdext-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-0_0_4".dir   = "0_0_4";
  inputs."stdext-0_0_4".owner = "nim-nix-pkgs";
  inputs."stdext-0_0_4".ref   = "master";
  inputs."stdext-0_0_4".repo  = "stdext";
  inputs."stdext-0_0_4".type  = "github";
  inputs."stdext-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-0_0_5".dir   = "0_0_5";
  inputs."stdext-0_0_5".owner = "nim-nix-pkgs";
  inputs."stdext-0_0_5".ref   = "master";
  inputs."stdext-0_0_5".repo  = "stdext";
  inputs."stdext-0_0_5".type  = "github";
  inputs."stdext-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-0_0_6".dir   = "0_0_6";
  inputs."stdext-0_0_6".owner = "nim-nix-pkgs";
  inputs."stdext-0_0_6".ref   = "master";
  inputs."stdext-0_0_6".repo  = "stdext";
  inputs."stdext-0_0_6".type  = "github";
  inputs."stdext-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-0_0_7".dir   = "0_0_7";
  inputs."stdext-0_0_7".owner = "nim-nix-pkgs";
  inputs."stdext-0_0_7".ref   = "master";
  inputs."stdext-0_0_7".repo  = "stdext";
  inputs."stdext-0_0_7".type  = "github";
  inputs."stdext-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-0_0_8".dir   = "0_0_8";
  inputs."stdext-0_0_8".owner = "nim-nix-pkgs";
  inputs."stdext-0_0_8".ref   = "master";
  inputs."stdext-0_0_8".repo  = "stdext";
  inputs."stdext-0_0_8".type  = "github";
  inputs."stdext-0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-v0_0_10".dir   = "v0_0_10";
  inputs."stdext-v0_0_10".owner = "nim-nix-pkgs";
  inputs."stdext-v0_0_10".ref   = "master";
  inputs."stdext-v0_0_10".repo  = "stdext";
  inputs."stdext-v0_0_10".type  = "github";
  inputs."stdext-v0_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-v0_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-v0_0_11".dir   = "v0_0_11";
  inputs."stdext-v0_0_11".owner = "nim-nix-pkgs";
  inputs."stdext-v0_0_11".ref   = "master";
  inputs."stdext-v0_0_11".repo  = "stdext";
  inputs."stdext-v0_0_11".type  = "github";
  inputs."stdext-v0_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-v0_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-v0_0_12".dir   = "v0_0_12";
  inputs."stdext-v0_0_12".owner = "nim-nix-pkgs";
  inputs."stdext-v0_0_12".ref   = "master";
  inputs."stdext-v0_0_12".repo  = "stdext";
  inputs."stdext-v0_0_12".type  = "github";
  inputs."stdext-v0_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-v0_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-v0_0_4".dir   = "v0_0_4";
  inputs."stdext-v0_0_4".owner = "nim-nix-pkgs";
  inputs."stdext-v0_0_4".ref   = "master";
  inputs."stdext-v0_0_4".repo  = "stdext";
  inputs."stdext-v0_0_4".type  = "github";
  inputs."stdext-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-v0_0_8".dir   = "v0_0_8";
  inputs."stdext-v0_0_8".owner = "nim-nix-pkgs";
  inputs."stdext-v0_0_8".ref   = "master";
  inputs."stdext-v0_0_8".repo  = "stdext";
  inputs."stdext-v0_0_8".type  = "github";
  inputs."stdext-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-v0_0_9".dir   = "v0_0_9";
  inputs."stdext-v0_0_9".owner = "nim-nix-pkgs";
  inputs."stdext-v0_0_9".ref   = "master";
  inputs."stdext-v0_0_9".repo  = "stdext";
  inputs."stdext-v0_0_9".type  = "github";
  inputs."stdext-v0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-v0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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