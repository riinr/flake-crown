{
  description = ''Selectors extension.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ioselectors-master".dir   = "master";
  inputs."ioselectors-master".owner = "nim-nix-pkgs";
  inputs."ioselectors-master".ref   = "master";
  inputs."ioselectors-master".repo  = "ioselectors";
  inputs."ioselectors-master".type  = "github";
  inputs."ioselectors-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ioselectors-v0_1_0".dir   = "v0_1_0";
  inputs."ioselectors-v0_1_0".owner = "nim-nix-pkgs";
  inputs."ioselectors-v0_1_0".ref   = "master";
  inputs."ioselectors-v0_1_0".repo  = "ioselectors";
  inputs."ioselectors-v0_1_0".type  = "github";
  inputs."ioselectors-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ioselectors-v0_1_2".dir   = "v0_1_2";
  inputs."ioselectors-v0_1_2".owner = "nim-nix-pkgs";
  inputs."ioselectors-v0_1_2".ref   = "master";
  inputs."ioselectors-v0_1_2".repo  = "ioselectors";
  inputs."ioselectors-v0_1_2".type  = "github";
  inputs."ioselectors-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ioselectors-v0_1_4".dir   = "v0_1_4";
  inputs."ioselectors-v0_1_4".owner = "nim-nix-pkgs";
  inputs."ioselectors-v0_1_4".ref   = "master";
  inputs."ioselectors-v0_1_4".repo  = "ioselectors";
  inputs."ioselectors-v0_1_4".type  = "github";
  inputs."ioselectors-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ioselectors-v0_1_6".dir   = "v0_1_6";
  inputs."ioselectors-v0_1_6".owner = "nim-nix-pkgs";
  inputs."ioselectors-v0_1_6".ref   = "master";
  inputs."ioselectors-v0_1_6".repo  = "ioselectors";
  inputs."ioselectors-v0_1_6".type  = "github";
  inputs."ioselectors-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ioselectors-v0_1_8".dir   = "v0_1_8";
  inputs."ioselectors-v0_1_8".owner = "nim-nix-pkgs";
  inputs."ioselectors-v0_1_8".ref   = "master";
  inputs."ioselectors-v0_1_8".repo  = "ioselectors";
  inputs."ioselectors-v0_1_8".type  = "github";
  inputs."ioselectors-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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