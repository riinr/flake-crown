{
  description = ''Duplicate files finder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ndf-0_3_0.flake = false;
  inputs.src-ndf-0_3_0.ref   = "refs/tags/0.3.0";
  inputs.src-ndf-0_3_0.owner = "rustomax";
  inputs.src-ndf-0_3_0.repo  = "ndf";
  inputs.src-ndf-0_3_0.type  = "github";
  
  inputs."docopt".owner = "nim-nix-pkgs";
  inputs."docopt".ref   = "master";
  inputs."docopt".repo  = "docopt";
  inputs."docopt".dir   = "v0_7_0";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."murmurhash".owner = "nim-nix-pkgs";
  inputs."murmurhash".ref   = "master";
  inputs."murmurhash".repo  = "murmurhash";
  inputs."murmurhash".dir   = "0_4_0";
  inputs."murmurhash".type  = "github";
  inputs."murmurhash".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmurhash".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ndf-0_3_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ndf-0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}