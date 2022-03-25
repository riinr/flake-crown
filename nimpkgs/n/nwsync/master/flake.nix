{
  description = ''NWSync Repository Management utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nwsync-master.flake = false;
  inputs.src-nwsync-master.ref   = "refs/heads/master";
  inputs.src-nwsync-master.owner = "Beamdog";
  inputs.src-nwsync-master.repo  = "nwsync";
  inputs.src-nwsync-master.type  = "github";
  
  inputs."neverwinter".owner = "nim-nix-pkgs";
  inputs."neverwinter".ref   = "master";
  inputs."neverwinter".repo  = "neverwinter";
  inputs."neverwinter".dir   = "1_5_5";
  inputs."neverwinter".type  = "github";
  inputs."neverwinter".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt".owner = "nim-nix-pkgs";
  inputs."docopt".ref   = "master";
  inputs."docopt".repo  = "docopt";
  inputs."docopt".dir   = "v0_6_8";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nwsync-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nwsync-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}