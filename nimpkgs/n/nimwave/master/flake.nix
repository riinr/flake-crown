{
  description = ''A TUI -> GUI library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimwave-master.flake = false;
  inputs.src-nimwave-master.ref   = "refs/heads/master";
  inputs.src-nimwave-master.owner = "ansiwave";
  inputs.src-nimwave-master.repo  = "nimwave";
  inputs.src-nimwave-master.type  = "github";
  
  inputs."ansiutils".owner = "nim-nix-pkgs";
  inputs."ansiutils".ref   = "master";
  inputs."ansiutils".repo  = "ansiutils";
  inputs."ansiutils".dir   = "0_1_0";
  inputs."ansiutils".type  = "github";
  inputs."ansiutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."illwave".owner = "nim-nix-pkgs";
  inputs."illwave".ref   = "master";
  inputs."illwave".repo  = "illwave";
  inputs."illwave".dir   = "0_5_0";
  inputs."illwave".type  = "github";
  inputs."illwave".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwave".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimwave-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimwave-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}