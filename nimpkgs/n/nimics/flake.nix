{
  description = ''Create ICS files for email invites, eg. invite.ics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimics-main".dir   = "main";
  inputs."nimics-main".owner = "nim-nix-pkgs";
  inputs."nimics-main".ref   = "master";
  inputs."nimics-main".repo  = "nimics";
  inputs."nimics-main".type  = "github";
  inputs."nimics-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimics-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimics-0_2_0".dir   = "0_2_0";
  inputs."nimics-0_2_0".owner = "nim-nix-pkgs";
  inputs."nimics-0_2_0".ref   = "master";
  inputs."nimics-0_2_0".repo  = "nimics";
  inputs."nimics-0_2_0".type  = "github";
  inputs."nimics-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimics-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimics-v0_1_0".dir   = "v0_1_0";
  inputs."nimics-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimics-v0_1_0".ref   = "master";
  inputs."nimics-v0_1_0".repo  = "nimics";
  inputs."nimics-v0_1_0".type  = "github";
  inputs."nimics-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimics-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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