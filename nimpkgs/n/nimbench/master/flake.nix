{
  description = ''Micro benchmarking tool for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimbench-master.flake = false;
  inputs.src-nimbench-master.ref   = "refs/heads/master";
  inputs.src-nimbench-master.owner = "ivankoster";
  inputs.src-nimbench-master.repo  = "nimbench";
  inputs.src-nimbench-master.type  = "github";
  
  inputs."strfmt".owner = "nim-nix-pkgs";
  inputs."strfmt".ref   = "master";
  inputs."strfmt".repo  = "strfmt";
  inputs."strfmt".dir   = "master";
  inputs."strfmt".type  = "github";
  inputs."strfmt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strfmt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimbench-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimbench-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}