{
  description = ''Timezone library compatible with the standard library. '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."timezones-master".url = "path:./master";
  inputs."timezones-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_2_0".url = "path:./v0_2_0";
  inputs."timezones-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_2_1".url = "path:./v0_2_1";
  inputs."timezones-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_3_0".url = "path:./v0_3_0";
  inputs."timezones-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_4_0".url = "path:./v0_4_0";
  inputs."timezones-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_4_1".url = "path:./v0_4_1";
  inputs."timezones-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_4_2".url = "path:./v0_4_2";
  inputs."timezones-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_4_3".url = "path:./v0_4_3";
  inputs."timezones-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_5_0".url = "path:./v0_5_0";
  inputs."timezones-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_5_1".url = "path:./v0_5_1";
  inputs."timezones-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_5_2".url = "path:./v0_5_2";
  inputs."timezones-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_5_3".url = "path:./v0_5_3";
  inputs."timezones-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_5_4".url = "path:./v0_5_4";
  inputs."timezones-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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