{
  description = ''Nim's Windows API and COM Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-winim-3_7_1.flake = false;
  inputs.src-winim-3_7_1.owner = "khchen";
  inputs.src-winim-3_7_1.ref   = "refs/tags/3.7.1";
  inputs.src-winim-3_7_1.repo  = "winim";
  inputs.src-winim-3_7_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-winim-3_7_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-winim-3_7_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}