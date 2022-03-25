{
  description = ''Nim module for checking if a provided string is actually a correct IP address. Supports detection of Class A to D of IPv4 addresses. IPv6 support planned.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-validateip-0_1_0.flake = false;
  inputs.src-validateip-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-validateip-0_1_0.owner = "theAkito";
  inputs.src-validateip-0_1_0.repo  = "nim-validateip";
  inputs.src-validateip-0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-validateip-0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-validateip-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}