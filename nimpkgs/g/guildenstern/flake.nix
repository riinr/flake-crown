{
  description = ''Modular multithreading Linux HTTP server'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."guildenstern-master".url = "path:./master";
  inputs."guildenstern-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-0_7".url = "path:./0_7";
  inputs."guildenstern-0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-0_8".url = "path:./0_8";
  inputs."guildenstern-0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-0_9".url = "path:./0_9";
  inputs."guildenstern-0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-1_0_0".url = "path:./1_0_0";
  inputs."guildenstern-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-1_0_1".url = "path:./1_0_1";
  inputs."guildenstern-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-2_0_0".url = "path:./2_0_0";
  inputs."guildenstern-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-3_0_0".url = "path:./3_0_0";
  inputs."guildenstern-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-3_1_0".url = "path:./3_1_0";
  inputs."guildenstern-3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-4_0_0".url = "path:./4_0_0";
  inputs."guildenstern-4_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-4_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-4_0_0-rc1".url = "path:./4_0_0-rc1";
  inputs."guildenstern-4_0_0-rc1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-4_0_0-rc1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-5_0_0".url = "path:./5_0_0";
  inputs."guildenstern-5_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-5_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."guildenstern-5_1_0".url = "path:./5_1_0";
  inputs."guildenstern-5_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."guildenstern-5_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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