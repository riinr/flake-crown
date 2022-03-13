{
  description = ''IPC interface to sway (or i3) compositors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-swayipc-3_0_1.flake = false;
  inputs.src-swayipc-3_0_1.owner = "disruptek";
  inputs.src-swayipc-3_0_1.ref   = "refs/tags/3.0.1";
  inputs.src-swayipc-3_0_1.repo  = "swayipc";
  inputs.src-swayipc-3_0_1.type  = "github";
  
  inputs."nesm".owner = "nim-nix-pkgs";
  inputs."nesm".ref   = "master";
  inputs."nesm".repo  = "nesm";
  inputs."nesm".type  = "github";
  inputs."nesm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-swayipc-3_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-swayipc-3_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}