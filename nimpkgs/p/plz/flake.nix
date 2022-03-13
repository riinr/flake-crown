{
  description = ''PLZ Python PIP alternative'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."plz-master".dir   = "master";
  inputs."plz-master".owner = "nim-nix-pkgs";
  inputs."plz-master".ref   = "master";
  inputs."plz-master".repo  = "plz";
  inputs."plz-master".type  = "github";
  inputs."plz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plz-0_0_1".dir   = "0_0_1";
  inputs."plz-0_0_1".owner = "nim-nix-pkgs";
  inputs."plz-0_0_1".ref   = "master";
  inputs."plz-0_0_1".repo  = "plz";
  inputs."plz-0_0_1".type  = "github";
  inputs."plz-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plz-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plz-init".dir   = "init";
  inputs."plz-init".owner = "nim-nix-pkgs";
  inputs."plz-init".ref   = "master";
  inputs."plz-init".repo  = "plz";
  inputs."plz-init".type  = "github";
  inputs."plz-init".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plz-init".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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