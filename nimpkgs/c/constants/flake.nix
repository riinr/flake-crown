{
  description = ''Mathematical numerical named static constants useful for different disciplines'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."constants-master".dir   = "master";
  inputs."constants-master".owner = "nim-nix-pkgs";
  inputs."constants-master".ref   = "master";
  inputs."constants-master".repo  = "constants";
  inputs."constants-master".type  = "github";
  inputs."constants-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."constants-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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