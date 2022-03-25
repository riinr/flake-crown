{
  description = ''Command to remove acceptably empty directories.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-awesome_rmdir-master.flake = false;
  inputs.src-awesome_rmdir-master.ref   = "refs/heads/master";
  inputs.src-awesome_rmdir-master.owner = "Araq";
  inputs.src-awesome_rmdir-master.repo  = "awesome_rmdir";
  inputs.src-awesome_rmdir-master.type  = "github";
  
  inputs."nake".owner = "nim-nix-pkgs";
  inputs."nake".ref   = "master";
  inputs."nake".repo  = "nake";
  inputs."nake".dir   = "1_9_4";
  inputs."nake".type  = "github";
  inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argument_parser".owner = "nim-nix-pkgs";
  inputs."argument_parser".ref   = "master";
  inputs."argument_parser".repo  = "argument_parser";
  inputs."argument_parser".dir   = "master";
  inputs."argument_parser".type  = "github";
  inputs."argument_parser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argument_parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-awesome_rmdir-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-awesome_rmdir-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}