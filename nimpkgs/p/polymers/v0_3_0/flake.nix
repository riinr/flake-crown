{
  description = ''A library of components and systems for use with the Polymorph ECS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-Polymers-v0_3_0.flake = false;
  inputs.src-Polymers-v0_3_0.owner = "rlipsc";
  inputs.src-Polymers-v0_3_0.ref   = "refs/tags/v0.3.0";
  inputs.src-Polymers-v0_3_0.repo  = "polymers";
  inputs.src-Polymers-v0_3_0.type  = "github";
  
  inputs."https://github.com/rlipsc/polymorph".owner = "nim-nix-pkgs";
  inputs."https://github.com/rlipsc/polymorph".ref   = "master";
  inputs."https://github.com/rlipsc/polymorph".repo  = "https://github.com/rlipsc/polymorph";
  inputs."https://github.com/rlipsc/polymorph".type  = "github";
  inputs."https://github.com/rlipsc/polymorph".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/rlipsc/polymorph".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-polymers-v0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-polymers-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}