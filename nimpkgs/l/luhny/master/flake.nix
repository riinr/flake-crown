{
  description = ''Luhn's Algorithm implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-luhny-master.flake = false;
  inputs.src-luhny-master.ref   = "refs/heads/master";
  inputs.src-luhny-master.owner = "sigmapie8";
  inputs.src-luhny-master.repo  = "luhny";
  inputs.src-luhny-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-luhny-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-luhny-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}