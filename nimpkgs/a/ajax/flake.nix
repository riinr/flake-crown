{
  description = ''AJAX wrapper for nim js backend.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ajax-master".dir   = "master";
  inputs."ajax-master".owner = "nim-nix-pkgs";
  inputs."ajax-master".ref   = "master";
  inputs."ajax-master".repo  = "ajax";
  inputs."ajax-master".type  = "github";
  inputs."ajax-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ajax-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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