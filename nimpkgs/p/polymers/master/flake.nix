{
  description = ''A library of components and systems for use with the Polymorph ECS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-polymers-master.flake = false;
  inputs.src-polymers-master.owner = "rlipsc";
  inputs.src-polymers-master.ref   = "refs/heads/master";
  inputs.src-polymers-master.repo  = "polymers";
  inputs.src-polymers-master.type  = "github";
  
  inputs."https://github.com/rlipsc/polymorph".owner = "nim-nix-pkgs";
  inputs."https://github.com/rlipsc/polymorph".ref   = "master";
  inputs."https://github.com/rlipsc/polymorph".repo  = "https://github.com/rlipsc/polymorph";
  inputs."https://github.com/rlipsc/polymorph".type  = "github";
  inputs."https://github.com/rlipsc/polymorph".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/rlipsc/polymorph".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-polymers-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-polymers-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}