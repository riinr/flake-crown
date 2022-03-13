{
  description = ''A library to help you write rest APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimbler-master".dir   = "master";
  inputs."nimbler-master".owner = "nim-nix-pkgs";
  inputs."nimbler-master".ref   = "master";
  inputs."nimbler-master".repo  = "nimbler";
  inputs."nimbler-master".type  = "github";
  inputs."nimbler-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbler-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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