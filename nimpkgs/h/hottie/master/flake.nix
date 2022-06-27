{
  description = ''Sampling profiler that finds hot paths in your code.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hottie-master.flake = false;
  inputs.src-hottie-master.ref   = "refs/heads/master";
  inputs.src-hottie-master.owner = "treeform";
  inputs.src-hottie-master.repo  = "hottie";
  inputs.src-hottie-master.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_24";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ptrace".owner = "nim-nix-pkgs";
  inputs."ptrace".ref   = "master";
  inputs."ptrace".repo  = "ptrace";
  inputs."ptrace".dir   = "0_0_4";
  inputs."ptrace".type  = "github";
  inputs."ptrace".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptrace".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hottie-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-hottie-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}