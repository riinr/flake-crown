{
  description = ''Library for detecting the format of an image'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-imghdr-master.flake = false;
  inputs.src-imghdr-master.ref   = "refs/heads/master";
  inputs.src-imghdr-master.owner = "achesak";
  inputs.src-imghdr-master.repo  = "nim-imghdr";
  inputs.src-imghdr-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-imghdr-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-imghdr-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}