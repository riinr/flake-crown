{
  description = ''Nim wrapper for libgit2 library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hlibgit2-0_1_3.flake = false;
  inputs.src-hlibgit2-0_1_3.ref   = "refs/tags/0.1.3";
  inputs.src-hlibgit2-0_1_3.owner = "haxscramper";
  inputs.src-hlibgit2-0_1_3.repo  = "hlibgit2";
  inputs.src-hlibgit2-0_1_3.type  = "github";
  
  inputs."github-haxscramper-hlibssh2".owner = "nim-nix-pkgs";
  inputs."github-haxscramper-hlibssh2".ref   = "master";
  inputs."github-haxscramper-hlibssh2".repo  = "github-haxscramper-hlibssh2";
  inputs."github-haxscramper-hlibssh2".dir   = "0_1_5";
  inputs."github-haxscramper-hlibssh2".type  = "github";
  inputs."github-haxscramper-hlibssh2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-haxscramper-hlibssh2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hlibgit2-0_1_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-hlibgit2-0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}