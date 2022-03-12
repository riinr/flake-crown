{
  description = ''A DSL for quickly writing parsers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-glossolalia-master.flake = false;
  inputs.src-glossolalia-master.owner = "fowlmouth";
  inputs.src-glossolalia-master.ref   = "refs/heads/master";
  inputs.src-glossolalia-master.repo  = "glossolalia";
  inputs.src-glossolalia-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-glossolalia-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-glossolalia-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}