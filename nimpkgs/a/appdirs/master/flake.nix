{
  description = ''A utility library to find the directory you need to app in.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-appdirs-master.flake = false;
  inputs.src-appdirs-master.ref   = "refs/heads/master";
  inputs.src-appdirs-master.owner = "MrJohz";
  inputs.src-appdirs-master.repo  = "appdirs";
  inputs.src-appdirs-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-appdirs-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-appdirs-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}