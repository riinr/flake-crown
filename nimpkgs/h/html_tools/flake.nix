{
  description = ''HTML5 Tools for Nim, all Templates, No CSS, No Libs, No JS Framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."html_tools-master".dir   = "master";
  inputs."html_tools-master".owner = "nim-nix-pkgs";
  inputs."html_tools-master".ref   = "master";
  inputs."html_tools-master".repo  = "html_tools";
  inputs."html_tools-master".type  = "github";
  inputs."html_tools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html_tools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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