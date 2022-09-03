{
  description = ''A container runtime written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nicoru-develop.flake = false;
  inputs.src-nicoru-develop.ref   = "refs/heads/develop";
  inputs.src-nicoru-develop.owner = "fox0430";
  inputs.src-nicoru-develop.repo  = "nicoru";
  inputs.src-nicoru-develop.type  = "github";
  
  inputs."syscall".owner = "nim-nix-pkgs";
  inputs."syscall".ref   = "master";
  inputs."syscall".repo  = "syscall";
  inputs."syscall".dir   = "source";
  inputs."syscall".type  = "github";
  inputs."syscall".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syscall".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."seccomp".owner = "nim-nix-pkgs";
  inputs."seccomp".ref   = "master";
  inputs."seccomp".repo  = "seccomp";
  inputs."seccomp".dir   = "0_2_1";
  inputs."seccomp".type  = "github";
  inputs."seccomp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seccomp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nicoru-develop"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nicoru-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}