{
  description = ''X-Plane XPLM SDK wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-XPLM-Nim-master.flake = false;
  inputs.src-XPLM-Nim-master.ref   = "refs/heads/master";
  inputs.src-XPLM-Nim-master.owner = "jpoirier";
  inputs.src-XPLM-Nim-master.repo  = "XPLM-Nim";
  inputs.src-XPLM-Nim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-XPLM-Nim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-XPLM-Nim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}