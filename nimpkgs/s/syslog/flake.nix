{
  description = ''Syslog module.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."syslog-master".url = "path:./master";
  inputs."syslog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syslog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syslog-0_0_3".url = "path:./0_0_3";
  inputs."syslog-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syslog-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syslog-0_0_5".url = "path:./0_0_5";
  inputs."syslog-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syslog-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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