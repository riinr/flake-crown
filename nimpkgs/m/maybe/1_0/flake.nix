{
  description = ''A maybe type for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-maybe-1_0.flake = false;
  inputs.src-maybe-1_0.owner = "superfunc";
  inputs.src-maybe-1_0.ref   = "1_0";
  inputs.src-maybe-1_0.repo  = "maybe";
  inputs.src-maybe-1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-maybe-1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-maybe-1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}