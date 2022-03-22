{
  description = ''coalesce to the first value that exists'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-coalesce-master.flake = false;
  inputs.src-coalesce-master.ref   = "refs/heads/master";
  inputs.src-coalesce-master.owner = "piedar";
  inputs.src-coalesce-master.repo  = "coalesce";
  inputs.src-coalesce-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-coalesce-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-coalesce-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}