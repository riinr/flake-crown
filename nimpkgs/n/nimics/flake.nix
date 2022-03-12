{
  description = ''Create ICS files for email invites, eg. invite.ics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimics-main".url = "path:./main";
  inputs."nimics-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimics-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimics-0_2_0".url = "path:./0_2_0";
  inputs."nimics-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimics-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimics-v0_1_0".url = "path:./v0_1_0";
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