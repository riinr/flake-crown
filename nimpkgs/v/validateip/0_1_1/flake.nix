{
  description = ''Checks if a provided string is actually a correct IP address. Supports detection of Class A to D of IPv4 addresses.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-validateip-0_1_1.flake = false;
  inputs.src-validateip-0_1_1.owner = "theAkito";
  inputs.src-validateip-0_1_1.ref   = "refs/tags/0.1.1";
  inputs.src-validateip-0_1_1.repo  = "nim-validateip";
  inputs.src-validateip-0_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-validateip-0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-validateip-0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}