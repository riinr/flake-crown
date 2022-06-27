{
  description = ''A package that manages background async tasks'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-taskman-0_4_0.flake = false;
  inputs.src-taskman-0_4_0.ref   = "refs/tags/0.4.0";
  inputs.src-taskman-0_4_0.owner = "ire4ever1190";
  inputs.src-taskman-0_4_0.repo  = "taskman";
  inputs.src-taskman-0_4_0.type  = "github";
  
  inputs."test".owner = "nim-nix-pkgs";
  inputs."test".ref   = "master";
  inputs."test".repo  = "test";
  inputs."test".dir   = "";
  inputs."test".type  = "github";
  inputs."test".inputs.nixpkgs.follows = "nixpkgs";
  inputs."test".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-taskman-0_4_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-taskman-0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}