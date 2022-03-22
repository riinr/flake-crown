{
  description = ''Simple program to show notifications with images and actions around the screen'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-notifishower-v0_5_0.flake = false;
  inputs.src-notifishower-v0_5_0.ref   = "refs/tags/v0.5.0";
  inputs.src-notifishower-v0_5_0.owner = "PMunch";
  inputs.src-notifishower-v0_5_0.repo  = "notifishower";
  inputs.src-notifishower-v0_5_0.type  = "github";
  
  inputs."imlib2".owner = "nim-nix-pkgs";
  inputs."imlib2".ref   = "master";
  inputs."imlib2".repo  = "imlib2";
  inputs."imlib2".dir   = "";
  inputs."imlib2".type  = "github";
  inputs."imlib2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imlib2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg".owner = "nim-nix-pkgs";
  inputs."npeg".ref   = "master";
  inputs."npeg".repo  = "npeg";
  inputs."npeg".dir   = "0_26_0";
  inputs."npeg".type  = "github";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kiwi".owner = "nim-nix-pkgs";
  inputs."kiwi".ref   = "master";
  inputs."kiwi".repo  = "kiwi";
  inputs."kiwi".dir   = "";
  inputs."kiwi".type  = "github";
  inputs."kiwi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kiwi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."termstyle".owner = "nim-nix-pkgs";
  inputs."termstyle".ref   = "master";
  inputs."termstyle".repo  = "termstyle";
  inputs."termstyle".dir   = "";
  inputs."termstyle".type  = "github";
  inputs."termstyle".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termstyle".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-notifishower-v0_5_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-notifishower-v0_5_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}