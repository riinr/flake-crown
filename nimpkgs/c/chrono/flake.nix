{
  description = ''Calendars, Timestamps and Timezones utilities.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."chrono-master".dir   = "master";
  inputs."chrono-master".owner = "nim-nix-pkgs";
  inputs."chrono-master".ref   = "master";
  inputs."chrono-master".repo  = "chrono";
  inputs."chrono-master".type  = "github";
  inputs."chrono-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chrono-0_1_0".dir   = "0_1_0";
  inputs."chrono-0_1_0".owner = "nim-nix-pkgs";
  inputs."chrono-0_1_0".ref   = "master";
  inputs."chrono-0_1_0".repo  = "chrono";
  inputs."chrono-0_1_0".type  = "github";
  inputs."chrono-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chrono-0_2_0".dir   = "0_2_0";
  inputs."chrono-0_2_0".owner = "nim-nix-pkgs";
  inputs."chrono-0_2_0".ref   = "master";
  inputs."chrono-0_2_0".repo  = "chrono";
  inputs."chrono-0_2_0".type  = "github";
  inputs."chrono-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chrono-0_3_0".dir   = "0_3_0";
  inputs."chrono-0_3_0".owner = "nim-nix-pkgs";
  inputs."chrono-0_3_0".ref   = "master";
  inputs."chrono-0_3_0".repo  = "chrono";
  inputs."chrono-0_3_0".type  = "github";
  inputs."chrono-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chrono-v0_1_0".dir   = "v0_1_0";
  inputs."chrono-v0_1_0".owner = "nim-nix-pkgs";
  inputs."chrono-v0_1_0".ref   = "master";
  inputs."chrono-v0_1_0".repo  = "chrono";
  inputs."chrono-v0_1_0".type  = "github";
  inputs."chrono-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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