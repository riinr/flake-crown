{
  description = ''most quick REPL of nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."replim-devel".dir   = "devel";
  inputs."replim-devel".owner = "nim-nix-pkgs";
  inputs."replim-devel".ref   = "master";
  inputs."replim-devel".repo  = "replim";
  inputs."replim-devel".type  = "github";
  inputs."replim-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."replim-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."replim-master".dir   = "master";
  inputs."replim-master".owner = "nim-nix-pkgs";
  inputs."replim-master".ref   = "master";
  inputs."replim-master".repo  = "replim";
  inputs."replim-master".type  = "github";
  inputs."replim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."replim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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