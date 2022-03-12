{
  description = ''Calendars, Timestamps and Timezones utilities.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."chrono-master".url = "path:./master";
  inputs."chrono-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chrono-0_1_0".url = "path:./0_1_0";
  inputs."chrono-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chrono-0_2_0".url = "path:./0_2_0";
  inputs."chrono-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chrono-0_3_0".url = "path:./0_3_0";
  inputs."chrono-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chrono-v0_1_0".url = "path:./v0_1_0";
  inputs."chrono-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}