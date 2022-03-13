{
  description = ''Proton template engine for xml and xhtml files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."proton-master".dir   = "master";
  inputs."proton-master".owner = "nim-nix-pkgs";
  inputs."proton-master".ref   = "master";
  inputs."proton-master".repo  = "proton";
  inputs."proton-master".type  = "github";
  inputs."proton-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."proton-v0_2_2".dir   = "v0_2_2";
  inputs."proton-v0_2_2".owner = "nim-nix-pkgs";
  inputs."proton-v0_2_2".ref   = "master";
  inputs."proton-v0_2_2".repo  = "proton";
  inputs."proton-v0_2_2".type  = "github";
  inputs."proton-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."proton-v0_2_3".dir   = "v0_2_3";
  inputs."proton-v0_2_3".owner = "nim-nix-pkgs";
  inputs."proton-v0_2_3".ref   = "master";
  inputs."proton-v0_2_3".repo  = "proton";
  inputs."proton-v0_2_3".type  = "github";
  inputs."proton-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."proton-v0_2_4".dir   = "v0_2_4";
  inputs."proton-v0_2_4".owner = "nim-nix-pkgs";
  inputs."proton-v0_2_4".ref   = "master";
  inputs."proton-v0_2_4".repo  = "proton";
  inputs."proton-v0_2_4".type  = "github";
  inputs."proton-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."proton-v0_2_5".dir   = "v0_2_5";
  inputs."proton-v0_2_5".owner = "nim-nix-pkgs";
  inputs."proton-v0_2_5".ref   = "master";
  inputs."proton-v0_2_5".repo  = "proton";
  inputs."proton-v0_2_5".type  = "github";
  inputs."proton-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."proton-v0_2_6".dir   = "v0_2_6";
  inputs."proton-v0_2_6".owner = "nim-nix-pkgs";
  inputs."proton-v0_2_6".ref   = "master";
  inputs."proton-v0_2_6".repo  = "proton";
  inputs."proton-v0_2_6".type  = "github";
  inputs."proton-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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