{
  description = ''A port of libnx to Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libnx-master".dir   = "master";
  inputs."libnx-master".owner = "nim-nix-pkgs";
  inputs."libnx-master".ref   = "master";
  inputs."libnx-master".repo  = "libnx";
  inputs."libnx-master".type  = "github";
  inputs."libnx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libnx-0_1_6".dir   = "0_1_6";
  inputs."libnx-0_1_6".owner = "nim-nix-pkgs";
  inputs."libnx-0_1_6".ref   = "master";
  inputs."libnx-0_1_6".repo  = "libnx";
  inputs."libnx-0_1_6".type  = "github";
  inputs."libnx-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnx-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libnx-0_1_8".dir   = "0_1_8";
  inputs."libnx-0_1_8".owner = "nim-nix-pkgs";
  inputs."libnx-0_1_8".ref   = "master";
  inputs."libnx-0_1_8".repo  = "libnx";
  inputs."libnx-0_1_8".type  = "github";
  inputs."libnx-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnx-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libnx-0_2_1".dir   = "0_2_1";
  inputs."libnx-0_2_1".owner = "nim-nix-pkgs";
  inputs."libnx-0_2_1".ref   = "master";
  inputs."libnx-0_2_1".repo  = "libnx";
  inputs."libnx-0_2_1".type  = "github";
  inputs."libnx-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnx-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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