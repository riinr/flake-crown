{
  description = ''Studio Backlot TV video extractor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."studiobacklottv-master".dir   = "master";
  inputs."studiobacklottv-master".owner = "nim-nix-pkgs";
  inputs."studiobacklottv-master".ref   = "master";
  inputs."studiobacklottv-master".repo  = "studiobacklottv";
  inputs."studiobacklottv-master".type  = "github";
  inputs."studiobacklottv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."studiobacklottv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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