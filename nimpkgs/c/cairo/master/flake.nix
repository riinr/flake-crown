{
  description = ''Wrapper for cairo, a vector graphics library with display and print output'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cairo-master.flake = false;
  inputs.src-cairo-master.owner = "nim-lang";
  inputs.src-cairo-master.ref   = "refs/heads/master";
  inputs.src-cairo-master.repo  = "cairo";
  inputs.src-cairo-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cairo-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cairo-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}