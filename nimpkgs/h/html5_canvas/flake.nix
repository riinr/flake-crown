{
  description = ''HTML5 Canvas and drawing for the JavaScript backend.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."html5_canvas-master".dir   = "master";
  inputs."html5_canvas-master".owner = "nim-nix-pkgs";
  inputs."html5_canvas-master".ref   = "master";
  inputs."html5_canvas-master".repo  = "html5_canvas";
  inputs."html5_canvas-master".type  = "github";
  inputs."html5_canvas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html5_canvas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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