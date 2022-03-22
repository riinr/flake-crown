{
  description = ''An implementation of DNS server stamps in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dnsstamps-master.flake = false;
  inputs.src-dnsstamps-master.ref   = "refs/heads/master";
  inputs.src-dnsstamps-master.owner = "alaviss";
  inputs.src-dnsstamps-master.repo  = "dnsstamps";
  inputs.src-dnsstamps-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dnsstamps-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dnsstamps-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}