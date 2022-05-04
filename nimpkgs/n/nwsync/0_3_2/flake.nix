{
  description = ''NWSync Repository Management utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nwsync-0_3_2.flake = false;
  inputs.src-nwsync-0_3_2.ref   = "refs/tags/0.3.2";
  inputs.src-nwsync-0_3_2.owner = "Beamdog";
  inputs.src-nwsync-0_3_2.repo  = "nwsync";
  inputs.src-nwsync-0_3_2.type  = "github";
  
  inputs."neverwinter".owner = "nim-nix-pkgs";
  inputs."neverwinter".ref   = "master";
  inputs."neverwinter".repo  = "neverwinter";
  inputs."neverwinter".dir   = "1_5_6";
  inputs."neverwinter".type  = "github";
  inputs."neverwinter".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nwsync-0_3_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nwsync-0_3_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}