{
  description = ''RIFF file handling in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-riff-master.flake = false;
  inputs.src-riff-master.ref   = "refs/heads/master";
  inputs.src-riff-master.owner = "johnnovak";
  inputs.src-riff-master.repo  = "nim-riff";
  inputs.src-riff-master.type  = "github";
  
  inputs."binstreams".owner = "nim-nix-pkgs";
  inputs."binstreams".ref   = "master";
  inputs."binstreams".repo  = "binstreams";
  inputs."binstreams".dir   = "v0_2_0";
  inputs."binstreams".type  = "github";
  inputs."binstreams".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binstreams".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-riff-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-riff-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}