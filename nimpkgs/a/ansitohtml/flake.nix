{
  description = ''Converts ANSI colour codes to HTML span tags with style tags'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ansitohtml-master".dir   = "master";
  inputs."ansitohtml-master".owner = "nim-nix-pkgs";
  inputs."ansitohtml-master".ref   = "master";
  inputs."ansitohtml-master".repo  = "ansitohtml";
  inputs."ansitohtml-master".type  = "github";
  inputs."ansitohtml-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansitohtml-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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