{
  description = ''Nim's function chaining and method cascading'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chain-master.flake = false;
  inputs.src-chain-master.ref   = "refs/heads/master";
  inputs.src-chain-master.owner = "khchen";
  inputs.src-chain-master.repo  = "chain";
  inputs.src-chain-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chain-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-chain-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}