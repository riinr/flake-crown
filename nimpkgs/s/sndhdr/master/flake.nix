{
  description = ''Library for detecting the format of a sound file'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sndhdr-master.flake = false;
  inputs.src-sndhdr-master.owner = "achesak";
  inputs.src-sndhdr-master.ref   = "refs/heads/master";
  inputs.src-sndhdr-master.repo  = "nim-sndhdr";
  inputs.src-sndhdr-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sndhdr-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sndhdr-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}