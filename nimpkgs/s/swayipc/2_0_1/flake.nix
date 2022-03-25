{
  description = ''IPC interface to sway (or i3) compositors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-i3ipc-2_0_1.flake = false;
  inputs.src-i3ipc-2_0_1.ref   = "refs/tags/2.0.1";
  inputs.src-i3ipc-2_0_1.owner = "disruptek";
  inputs.src-i3ipc-2_0_1.repo  = "swayipc";
  inputs.src-i3ipc-2_0_1.type  = "github";
  
  inputs."nesm".owner = "nim-nix-pkgs";
  inputs."nesm".ref   = "master";
  inputs."nesm".repo  = "nesm";
  inputs."nesm".dir   = "v0_4_10";
  inputs."nesm".type  = "github";
  inputs."nesm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_23";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-i3ipc-2_0_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-i3ipc-2_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}