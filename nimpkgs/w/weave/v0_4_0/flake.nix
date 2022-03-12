{
  description = ''a state-of-the-art multithreading runtime'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-weave-v0_4_0.flake = false;
  inputs.src-weave-v0_4_0.owner = "mratsim";
  inputs.src-weave-v0_4_0.ref   = "refs/tags/v0.4.0";
  inputs.src-weave-v0_4_0.repo  = "weave";
  inputs.src-weave-v0_4_0.type  = "github";
  
  inputs."synthesis".owner = "nim-nix-pkgs";
  inputs."synthesis".ref   = "master";
  inputs."synthesis".repo  = "synthesis";
  inputs."synthesis".type  = "github";
  inputs."synthesis".inputs.nixpkgs.follows = "nixpkgs";
  inputs."synthesis".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-weave-v0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-weave-v0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}