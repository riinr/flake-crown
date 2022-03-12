{
  description = ''github-release package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."github_release-master".url = "path:./master";
  inputs."github_release-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github_release-releases".url = "path:./releases";
  inputs."github_release-releases".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-releases".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github_release-v0_1_0".url = "path:./v0_1_0";
  inputs."github_release-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github_release-v0_1_0-alpha".url = "path:./v0_1_0-alpha";
  inputs."github_release-v0_1_0-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-v0_1_0-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github_release-v0_1_1-alpha".url = "path:./v0_1_1-alpha";
  inputs."github_release-v0_1_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-v0_1_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github_release-v0_1_2".url = "path:./v0_1_2";
  inputs."github_release-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github_release-v0_1_3".url = "path:./v0_1_3";
  inputs."github_release-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github_release-v0_1_4".url = "path:./v0_1_4";
  inputs."github_release-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github_release-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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