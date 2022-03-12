{
  description = ''Utilities for use with IP. It has functions for IPv4, IPv6 and CIDR.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-iputils-v0_1_0.flake = false;
  inputs.src-iputils-v0_1_0.owner = "rockcavera";
  inputs.src-iputils-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-iputils-v0_1_0.repo  = "nim-iputils";
  inputs.src-iputils-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-iputils-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-iputils-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}