{
  description = ''Library for attaching files to emails.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mime-master".dir   = "master";
  inputs."mime-master".owner = "nim-nix-pkgs";
  inputs."mime-master".ref   = "master";
  inputs."mime-master".repo  = "mime";
  inputs."mime-master".type  = "github";
  inputs."mime-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mime-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mime-v0_0_3".dir   = "v0_0_3";
  inputs."mime-v0_0_3".owner = "nim-nix-pkgs";
  inputs."mime-v0_0_3".ref   = "master";
  inputs."mime-v0_0_3".repo  = "mime";
  inputs."mime-v0_0_3".type  = "github";
  inputs."mime-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mime-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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