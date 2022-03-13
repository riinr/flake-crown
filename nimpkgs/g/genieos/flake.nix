{
  description = ''Too awesome procs to be included in nimrod.os module'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."genieos-master".dir   = "master";
  inputs."genieos-master".owner = "nim-nix-pkgs";
  inputs."genieos-master".ref   = "master";
  inputs."genieos-master".repo  = "genieos";
  inputs."genieos-master".type  = "github";
  inputs."genieos-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genieos-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genieos-v9_0_0-taeyeon".dir   = "v9_0_0-taeyeon";
  inputs."genieos-v9_0_0-taeyeon".owner = "nim-nix-pkgs";
  inputs."genieos-v9_0_0-taeyeon".ref   = "master";
  inputs."genieos-v9_0_0-taeyeon".repo  = "genieos";
  inputs."genieos-v9_0_0-taeyeon".type  = "github";
  inputs."genieos-v9_0_0-taeyeon".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genieos-v9_0_0-taeyeon".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genieos-v9_0_1-jessica".dir   = "v9_0_1-jessica";
  inputs."genieos-v9_0_1-jessica".owner = "nim-nix-pkgs";
  inputs."genieos-v9_0_1-jessica".ref   = "master";
  inputs."genieos-v9_0_1-jessica".repo  = "genieos";
  inputs."genieos-v9_0_1-jessica".type  = "github";
  inputs."genieos-v9_0_1-jessica".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genieos-v9_0_1-jessica".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genieos-v9_2_0-sunny".dir   = "v9_2_0-sunny";
  inputs."genieos-v9_2_0-sunny".owner = "nim-nix-pkgs";
  inputs."genieos-v9_2_0-sunny".ref   = "master";
  inputs."genieos-v9_2_0-sunny".repo  = "genieos";
  inputs."genieos-v9_2_0-sunny".type  = "github";
  inputs."genieos-v9_2_0-sunny".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genieos-v9_2_0-sunny".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genieos-v9_4_0-tiffany".dir   = "v9_4_0-tiffany";
  inputs."genieos-v9_4_0-tiffany".owner = "nim-nix-pkgs";
  inputs."genieos-v9_4_0-tiffany".ref   = "master";
  inputs."genieos-v9_4_0-tiffany".repo  = "genieos";
  inputs."genieos-v9_4_0-tiffany".type  = "github";
  inputs."genieos-v9_4_0-tiffany".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genieos-v9_4_0-tiffany".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genieos-v9_4_2-hyoyeon".dir   = "v9_4_2-hyoyeon";
  inputs."genieos-v9_4_2-hyoyeon".owner = "nim-nix-pkgs";
  inputs."genieos-v9_4_2-hyoyeon".ref   = "master";
  inputs."genieos-v9_4_2-hyoyeon".repo  = "genieos";
  inputs."genieos-v9_4_2-hyoyeon".type  = "github";
  inputs."genieos-v9_4_2-hyoyeon".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genieos-v9_4_2-hyoyeon".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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