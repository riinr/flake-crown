{
  description = ''Minimalistic libnotify wrapper.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libnotify-master.flake = false;
  inputs.src-libnotify-master.ref   = "refs/heads/master";
  inputs.src-libnotify-master.owner = "FedericoCeratto";
  inputs.src-libnotify-master.repo  = "nim-libnotify";
  inputs.src-libnotify-master.type  = "github";
  
  inputs."gtk2".owner = "nim-nix-pkgs";
  inputs."gtk2".ref   = "master";
  inputs."gtk2".repo  = "gtk2";
  inputs."gtk2".dir   = "v1_3";
  inputs."gtk2".type  = "github";
  inputs."gtk2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libnotify-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libnotify-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}