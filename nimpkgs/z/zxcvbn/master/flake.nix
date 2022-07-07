{
  description = ''Nim bindings for the zxcvbn-c password strenght estimator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zxcvbn-master.flake = false;
  inputs.src-zxcvbn-master.ref   = "refs/heads/master";
  inputs.src-zxcvbn-master.owner = "status-im";
  inputs.src-zxcvbn-master.repo  = "nim-zxcvbn";
  inputs.src-zxcvbn-master.type  = "github";
  
  inputs."testutils".owner = "nim-nix-pkgs";
  inputs."testutils".ref   = "master";
  inputs."testutils".repo  = "testutils";
  inputs."testutils".dir   = "v0_5_0";
  inputs."testutils".type  = "github";
  inputs."testutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zxcvbn-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-zxcvbn-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}