{
  description = ''Library for detecting the format of an video file'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-vidhdr-master.flake = false;
  inputs.src-vidhdr-master.owner = "achesak";
  inputs.src-vidhdr-master.ref   = "refs/heads/master";
  inputs.src-vidhdr-master.repo  = "nim-vidhdr";
  inputs.src-vidhdr-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-vidhdr-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-vidhdr-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}