{
  description = ''URL and URI parsing for C and JS backend.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."urlly-master".dir   = "master";
  inputs."urlly-master".owner = "nim-nix-pkgs";
  inputs."urlly-master".ref   = "master";
  inputs."urlly-master".repo  = "urlly";
  inputs."urlly-master".type  = "github";
  inputs."urlly-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uriiy-0_1_0".dir   = "0_1_0";
  inputs."uriiy-0_1_0".owner = "nim-nix-pkgs";
  inputs."uriiy-0_1_0".ref   = "master";
  inputs."uriiy-0_1_0".repo  = "uriiy";
  inputs."uriiy-0_1_0".type  = "github";
  inputs."uriiy-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uriiy-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."urlly-0_2_0".dir   = "0_2_0";
  inputs."urlly-0_2_0".owner = "nim-nix-pkgs";
  inputs."urlly-0_2_0".ref   = "master";
  inputs."urlly-0_2_0".repo  = "urlly";
  inputs."urlly-0_2_0".type  = "github";
  inputs."urlly-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."urlly-0_3_0".dir   = "0_3_0";
  inputs."urlly-0_3_0".owner = "nim-nix-pkgs";
  inputs."urlly-0_3_0".ref   = "master";
  inputs."urlly-0_3_0".repo  = "urlly";
  inputs."urlly-0_3_0".type  = "github";
  inputs."urlly-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."urlly-1_0_0".dir   = "1_0_0";
  inputs."urlly-1_0_0".owner = "nim-nix-pkgs";
  inputs."urlly-1_0_0".ref   = "master";
  inputs."urlly-1_0_0".repo  = "urlly";
  inputs."urlly-1_0_0".type  = "github";
  inputs."urlly-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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