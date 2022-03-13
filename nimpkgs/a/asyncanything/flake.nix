{
  description = ''make anything async [to be honest, fake async]'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."asyncanything-main".dir   = "main";
  inputs."asyncanything-main".owner = "nim-nix-pkgs";
  inputs."asyncanything-main".ref   = "master";
  inputs."asyncanything-main".repo  = "asyncanything";
  inputs."asyncanything-main".type  = "github";
  inputs."asyncanything-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncanything-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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