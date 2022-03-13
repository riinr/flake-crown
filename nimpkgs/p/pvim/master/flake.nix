{
  description = ''A vim-based editor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pvim-master.flake = false;
  inputs.src-pvim-master.owner = "paranim";
  inputs.src-pvim-master.ref   = "refs/heads/master";
  inputs.src-pvim-master.repo  = "pvim";
  inputs.src-pvim-master.type  = "github";
  
  inputs."paravim".owner = "nim-nix-pkgs";
  inputs."paravim".ref   = "master";
  inputs."paravim".repo  = "paravim";
  inputs."paravim".type  = "github";
  inputs."paravim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pvim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pvim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}