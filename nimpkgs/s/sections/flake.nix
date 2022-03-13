{
  description = ''`Section` macro with BDD aliases for testing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sections-master".dir   = "master";
  inputs."sections-master".owner = "nim-nix-pkgs";
  inputs."sections-master".ref   = "master";
  inputs."sections-master".repo  = "sections";
  inputs."sections-master".type  = "github";
  inputs."sections-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sections-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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