{
  description = ''A beanstalkd work queue client library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."beanstalkd-master".dir   = "master";
  inputs."beanstalkd-master".owner = "nim-nix-pkgs";
  inputs."beanstalkd-master".ref   = "master";
  inputs."beanstalkd-master".repo  = "beanstalkd";
  inputs."beanstalkd-master".type  = "github";
  inputs."beanstalkd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."beanstalkd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."beanstalkd-0_1_0".dir   = "0_1_0";
  inputs."beanstalkd-0_1_0".owner = "nim-nix-pkgs";
  inputs."beanstalkd-0_1_0".ref   = "master";
  inputs."beanstalkd-0_1_0".repo  = "beanstalkd";
  inputs."beanstalkd-0_1_0".type  = "github";
  inputs."beanstalkd-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."beanstalkd-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."beanstalkd-0_2_0".dir   = "0_2_0";
  inputs."beanstalkd-0_2_0".owner = "nim-nix-pkgs";
  inputs."beanstalkd-0_2_0".ref   = "master";
  inputs."beanstalkd-0_2_0".repo  = "beanstalkd";
  inputs."beanstalkd-0_2_0".type  = "github";
  inputs."beanstalkd-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."beanstalkd-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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