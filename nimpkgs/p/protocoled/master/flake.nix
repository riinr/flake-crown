{
  description = ''An interface macro for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-protocoled-master.flake = false;
  inputs.src-protocoled-master.ref   = "refs/heads/master";
  inputs.src-protocoled-master.owner = "planetis-m";
  inputs.src-protocoled-master.repo  = "protocoled";
  inputs.src-protocoled-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-protocoled-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-protocoled-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}