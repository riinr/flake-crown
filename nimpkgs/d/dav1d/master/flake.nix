{
  description = ''Nim wrapper for dav1d, a fast, portable av1 video decoder created by videolan and used by VLC and Netflix'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dav1d-master.flake = false;
  inputs.src-dav1d-master.ref   = "refs/heads/master";
  inputs.src-dav1d-master.owner = "capocasa";
  inputs.src-dav1d-master.repo  = "nim-dav1d";
  inputs.src-dav1d-master.type  = "github";
  
  inputs."github.com/capocasa/nimterop".owner = "nim-nix-pkgs";
  inputs."github.com/capocasa/nimterop".ref   = "master";
  inputs."github.com/capocasa/nimterop".repo  = "github.com/capocasa/nimterop";
  inputs."github.com/capocasa/nimterop".dir   = "";
  inputs."github.com/capocasa/nimterop".type  = "github";
  inputs."github.com/capocasa/nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/capocasa/nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dav1d-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-dav1d-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}