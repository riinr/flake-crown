{
  description = ''X-Plane XPLM SDK wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-XPLM-Nim-develop.flake = false;
  inputs.src-XPLM-Nim-develop.ref   = "refs/heads/develop";
  inputs.src-XPLM-Nim-develop.owner = "jpoirier";
  inputs.src-XPLM-Nim-develop.repo  = "XPLM-Nim";
  inputs.src-XPLM-Nim-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-XPLM-Nim-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-XPLM-Nim-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}