{
  description = ''Syslog module.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."syslog-master".dir   = "master";
  inputs."syslog-master".owner = "nim-nix-pkgs";
  inputs."syslog-master".ref   = "master";
  inputs."syslog-master".repo  = "syslog";
  inputs."syslog-master".type  = "github";
  inputs."syslog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syslog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syslog-0_0_3".dir   = "0_0_3";
  inputs."syslog-0_0_3".owner = "nim-nix-pkgs";
  inputs."syslog-0_0_3".ref   = "master";
  inputs."syslog-0_0_3".repo  = "syslog";
  inputs."syslog-0_0_3".type  = "github";
  inputs."syslog-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syslog-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syslog-0_0_5".dir   = "0_0_5";
  inputs."syslog-0_0_5".owner = "nim-nix-pkgs";
  inputs."syslog-0_0_5".ref   = "master";
  inputs."syslog-0_0_5".repo  = "syslog";
  inputs."syslog-0_0_5".type  = "github";
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