{
  description = ''Connection Test for Nim Web Applications'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-netTest-main.flake = false;
  inputs.src-netTest-main.owner = "blmvxer";
  inputs.src-netTest-main.ref   = "refs/heads/main";
  inputs.src-netTest-main.repo  = "netTest";
  inputs.src-netTest-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-netTest-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-netTest-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}