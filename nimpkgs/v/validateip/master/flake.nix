{
  description = ''Checks if a provided string is actually a correct IP address. Supports detection of Class A to D of IPv4 addresses.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-validateip-master.flake = false;
  inputs.src-validateip-master.owner = "theAkito";
  inputs.src-validateip-master.ref   = "refs/heads/master";
  inputs.src-validateip-master.repo  = "nim-validateip";
  inputs.src-validateip-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-validateip-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-validateip-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}