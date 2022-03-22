{
  description = ''A maybe type for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-maybe-2_2.flake = false;
  inputs.src-maybe-2_2.owner = "superfunc";
  inputs.src-maybe-2_2.ref   = "2_2";
  inputs.src-maybe-2_2.repo  = "maybe";
  inputs.src-maybe-2_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-maybe-2_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-maybe-2_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}