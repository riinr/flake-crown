{
  description = ''Library for shell scripting in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimshell-v0_0_1.flake = false;
  inputs.src-nimshell-v0_0_1.owner = "vegansk";
  inputs.src-nimshell-v0_0_1.ref   = "refs/tags/v0.0.1";
  inputs.src-nimshell-v0_0_1.repo  = "nimshell";
  inputs.src-nimshell-v0_0_1.type  = "github";
  
  inputs."monad".owner = "nim-nix-pkgs";
  inputs."monad".ref   = "master";
  inputs."monad".repo  = "monad";
  inputs."monad".type  = "github";
  inputs."monad".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monad".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimshell-v0_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimshell-v0_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}