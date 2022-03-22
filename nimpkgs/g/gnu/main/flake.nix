{
  description = ''Godot-Nim Utility - Godot gamedev with Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gnu-main.flake = false;
  inputs.src-gnu-main.ref   = "refs/heads/main";
  inputs.src-gnu-main.owner = "tonogram";
  inputs.src-gnu-main.repo  = "gnu";
  inputs.src-gnu-main.type  = "github";
  
  inputs."godot".owner = "nim-nix-pkgs";
  inputs."godot".ref   = "master";
  inputs."godot".repo  = "godot";
  inputs."godot".dir   = "v0_7_28";
  inputs."godot".type  = "github";
  inputs."godot".inputs.nixpkgs.follows = "nixpkgs";
  inputs."godot".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_22";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gnu-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gnu-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}