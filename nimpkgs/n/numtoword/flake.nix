{
  description = ''Convert numbers to words'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."numtoword-master".dir   = "master";
  inputs."numtoword-master".owner = "nim-nix-pkgs";
  inputs."numtoword-master".ref   = "master";
  inputs."numtoword-master".repo  = "numtoword";
  inputs."numtoword-master".type  = "github";
  inputs."numtoword-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numtoword-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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