{
  description = ''Nim-based DSL allowing to generate SVG files and GIF animations.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimsvg-master.flake = false;
  inputs.src-nimsvg-master.owner = "bluenote10";
  inputs.src-nimsvg-master.ref   = "master";
  inputs.src-nimsvg-master.repo  = "NimSvg";
  inputs.src-nimsvg-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimsvg-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimsvg-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}