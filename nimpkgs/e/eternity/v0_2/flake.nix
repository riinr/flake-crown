{
  description = ''Humanize elapsed time'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eternity-v0_2.flake = false;
  inputs.src-eternity-v0_2.owner = "hiteshjasani";
  inputs.src-eternity-v0_2.ref   = "v0_2";
  inputs.src-eternity-v0_2.repo  = "nim-eternity";
  inputs.src-eternity-v0_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eternity-v0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-eternity-v0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}